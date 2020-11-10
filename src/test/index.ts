import pickledCucumber, { SetupFn } from 'pickled-cucumber';

const setup: SetupFn = ({ Given, Then, When }) => {
  Given('a test environment for branch "{word}"', branch =>
    testEnvs.addTestEnv(branch),
  );
};

pickledCucumber(setup);
