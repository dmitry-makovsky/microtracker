import cap from '../src/index';

describe('first', () => {
  it('should return correct message', () => {
    expect(cap('hello from api!')).toBe('Hello from api!');
  });
});
