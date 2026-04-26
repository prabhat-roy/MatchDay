// Module Federation across MatchDay frontends (storefront / admin / partner / mobile-web)
const { ModuleFederationPlugin } = require("@module-federation/enhanced/webpack");
module.exports = {
  plugins: [
    new ModuleFederationPlugin({
      name: "matchday_shell",
      remotes: {
        admin: "admin@https://admin.matchday.internal/remoteEntry.js",
        partner: "partner@https://partner.matchday.internal/remoteEntry.js",
      },
      shared: { react: { singleton: true }, "react-dom": { singleton: true } },
    }),
  ],
};
