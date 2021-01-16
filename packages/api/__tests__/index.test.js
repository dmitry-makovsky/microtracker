import request from 'supertest';
import server from '../src/index';

describe('first', () => {
  it('should return correct message', async () => {
    const result = await request(server).get('/');
    expect(result.text).toBe('Hello from api!');
  });
});
