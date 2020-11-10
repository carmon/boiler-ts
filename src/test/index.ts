import pickledCucumber, { SetupFn } from 'pickled-cucumber';
import boolEval from '../boolEval';
import keyEval from '../keyEval';
import { Option } from '../types';

const setup: SetupFn = ({
  Given,
  Then,
  When,
  setCtx,
  getCtx,
  onTearDown,
  compare,
}) => {
  const setConfig = (value: unknown) => {
    const current = getCtx('config');
    setCtx('config', value);
    onTearDown(() => setCtx('config', current));
  };

  Given('a config = "{word}"', config => {
    setConfig(config);
  });

  Given('H value is "{word}"', hValue => {
    setCtx('H', hValue);
  });

  When(
    'evaluating booleans',
    payload => {
      const cfg = getCtx('config');
      const vars = JSON.parse(payload);
      setCtx('H', boolEval(cfg as Option)(vars['A'], vars['B'], vars['C']));
    },
    { inline: true },
  );

  When(
    'evaluating numbers',
    payload => {
      const cfg = getCtx('config');
      const vars = JSON.parse(payload);
      setCtx(
        'K',
        keyEval(cfg as Option)(getCtx('H'), vars['D'], vars['E'], vars['F']),
      );
    },
    { inline: true },
  );

  Then('H = "{word}"', result => compare('is', getCtx('H'), `"${result}"`));

  Then('K = {variable}', float => compare('is', getCtx('K'), float));

  Then('H has no value', () => !getCtx('H'));
};

pickledCucumber(setup);
