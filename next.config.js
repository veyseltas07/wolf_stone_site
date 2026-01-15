/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  async rewrites() {
    return [
      {
        source: '/privacy',
        destination: '/en/privacy',
      },
      {
        source: '/terms',
        destination: '/en/terms',
      },
    ];
  },
}

module.exports = nextConfig

