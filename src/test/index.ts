import pickledCucumber, { SetupFn } from 'pickled-cucumber';
import boolEval from '../boolEval';
import { Option } from '../types';

type BooleanGroup = { [key: string]: boolean };

const setup: SetupFn = ({
  Given,
  Then,
  When,
  setCtx,
  getCtx,
  compare,
  onTearDown,
}) => {
  const setConfig = (value: unknown) => {
    const current = getCtx('config');
    setCtx('config', value);
    onTearDown(() => setCtx('config', current));
  };

  Given('a config = "{word}"', config => {
    setConfig(config);
  });

  Given('a boolean group {variable} with', (boolsVar, payload) => {
    console.log(payload);
    setCtx(boolsVar, JSON.parse(payload) as BooleanGroup);
  });

  When(
    'evaluating {variable}',
    boolsVar => {
      const cfg = getCtx('config');
      const vars = getCtx<BooleanGroup>(boolsVar);
      setCtx('H', boolEval(cfg as Option)(vars['A'], vars['B'], vars['C']));
    },
    { inline: true },
  );

  Then('H = "{word}"', result => compare('is', getCtx('H'), result));
};

pickledCucumber(setup);
