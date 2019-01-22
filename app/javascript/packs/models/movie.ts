import { ISODateTime } from './datetime';

export type MovieId = number;

export type Movie = {
  id: MovieId;
  title: string;
  created_at: ISODateTime;
  updated_at: ISODateTime;
}
