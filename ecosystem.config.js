module.exports = {
  apps: [
    {
      name: 'backend',
      script: './backend/dist/bin/microtracker-backend.js',
      args: ['dotenv_config_path=../.env'],
      cwd: './backend',
      watch: true,
      ignore_watch: ['node_modules'],
      time: true,
      node_args: '--require dotenv/config'
    },
  ],

  deploy: {
    production: {
      user: 'SSH_USERNAME',
      host: 'SSH_HOSTMACHINE',
      ref: 'origin/master',
      repo: 'GIT_REPOSITORY',
      path: 'DESTINATION_PATH',
      'pre-deploy-local': '',
      'post-deploy': 'npm install && pm2 reload ecosystem.config.js',
      'pre-setup': '',
    },
  },
};
