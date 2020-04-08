export type Event1 = {
  error?: string;
  type: '1';
};

export type Event2 = {
  image: string;
  type: '2';
};

export type OneTwoEvent = Event1 | Event2;

export type Event3 = {
  status: 'ok';
  type: '3';
};

export type OneTwoThreeWorkingEvent = Event1 | Event2 | Event3;
export type OneTwoThreeNotWorkingEvent = OneTwoEvent | Event3;
