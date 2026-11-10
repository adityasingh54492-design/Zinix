import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        background: "#080B10",
        surface: "#0D111A",
        surfaceLight: "#141A26",
        surfaceBorder: "rgba(255, 255, 255, 0.08)",
        zinx: {
          dark: "#080B10",
          card: "#0E131E",
          cardHover: "#151C2C",
          border: "rgba(255, 255, 255, 0.09)",
          cyan: "#00F2FE",
          blue: "#4FACFE",
          indigo: "#6366F1",
          purple: "#9333EA",
          violet: "#A855F7",
        },
      },
      backgroundImage: {
        "gradient-radial": "radial-gradient(var(--tw-gradient-stops))",
        "gradient-conic": "conic-gradient(from 180deg at 50% 50%, var(--tw-gradient-stops))",
        "zinx-gradient": "linear-gradient(135deg, #00F2FE 0%, #4FACFE 50%, #A855F7 100%)",
        "zinx-btn": "linear-gradient(90deg, #00D2FF 0%, #3A7BD5 50%, #8A2387 100%)",
        "zinx-glow": "radial-gradient(circle at 50% 0%, rgba(0, 242, 254, 0.15), transparent 70%)",
      },
      boxShadow: {
        "glass": "0 8px 32px 0 rgba(0, 0, 0, 0.37)",
        "glow-cyan": "0 0 25px -5px rgba(0, 242, 254, 0.4)",
        "glow-purple": "0 0 25px -5px rgba(168, 85, 247, 0.4)",
      },
      animation: {
        "pulse-slow": "pulse 4s cubic-bezier(0.4, 0, 0.6, 1) infinite",
        "float": "float 6s ease-in-out infinite",
      },
      keyframes: {
        float: {
          "0%, 100%": { transform: "translateY(0)" },
          "50%": { transform: "translateY(-8px)" },
        },
      },
    },
  },
  plugins: [],
};
export default config;
