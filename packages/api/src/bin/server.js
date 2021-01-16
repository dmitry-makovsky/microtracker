import server from '../index.js';

const hostname = process.env.API_HOST ?? '127.0.0.1';
const port = process.env.API_PORT ?? 3000;

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
