module.exports = {
  config: {
    fontSize: 14,
    fontFamily: '"Source Code Pro for Powerline", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',
    cursorColor: '#f1d000',
    cursorShape: 'BEAM',
    foregroundColor: '#fff',
    backgroundColor: 'rgba(23, 52, 72, 0.8)',
    borderColor: 'rgb(16, 50, 76)',
    copyOnSelect: true,
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    'hypercwd',
    'hyper-simple-vibrancy',
    'hyper-simple-highlight-active-session',
    'hyper-statusline',
  ],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
