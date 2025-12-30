# Shader Animation Component

A Next.js project with shadcn/ui, Tailwind CSS, and TypeScript featuring a beautiful shader lines animation component.

## Project Structure

This project follows the shadcn/ui convention:
- **Components**: `/components/ui` - All UI components are stored here
- **Styles**: `app/globals.css` - Global styles with Tailwind CSS
- **TypeScript**: Full TypeScript support with strict mode

## Why `/components/ui`?

The `/components/ui` directory is the standard location for shadcn/ui components. This structure:
- Keeps UI components organized and easily accessible
- Follows shadcn/ui conventions for component management
- Makes it easy to add more shadcn components using `npx shadcn@latest add [component]`
- Maintains consistency with the shadcn ecosystem

## Setup Instructions

### Prerequisites
- Node.js 18+ installed
- npm or yarn package manager

### Installation

The project is already set up, but if you need to recreate it:

1. **Initialize Next.js with TypeScript and Tailwind:**
   ```bash
   npx create-next-app@latest . --typescript --tailwind --eslint --app --no-src-dir --import-alias "@/*"
   ```

2. **Set up shadcn/ui:**
   ```bash
   npx shadcn@latest init
   ```
   - Choose default options (New York style, CSS variables, etc.)

3. **Install dependencies:**
   ```bash
   npm install
   ```

## Running the Project

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

## Component Usage

The `ShaderAnimation` component is located at `/components/ui/shader-lines.tsx`.

### Basic Usage

```tsx
import { ShaderAnimation } from "@/components/ui/shader-lines";

export default function MyPage() {
  return (
    <div className="relative h-[650px] w-full">
      <ShaderAnimation />
      <div className="relative z-10">
        {/* Your content here */}
      </div>
    </div>
  );
}
```

## Features

- ✅ Next.js 16 with App Router
- ✅ TypeScript with strict mode
- ✅ Tailwind CSS v4
- ✅ shadcn/ui configured
- ✅ Three.js shader animation
- ✅ Responsive design
- ✅ Dark mode support

## Pages

- **Home** (`/`): Main page showcasing the shader animation
- **Demo** (`/demo`): Dedicated demo page for the component

## Dependencies

- **Next.js**: React framework
- **React**: UI library
- **TypeScript**: Type safety
- **Tailwind CSS**: Utility-first CSS
- **shadcn/ui**: Component library
- **Three.js**: Loaded via CDN for shader rendering

## Project Structure

```
shader-app/
├── app/
│   ├── demo/
│   │   └── page.tsx          # Demo page
│   ├── globals.css           # Global styles
│   ├── layout.tsx            # Root layout
│   └── page.tsx              # Home page
├── components/
│   └── ui/
│       └── shader-lines.tsx  # Shader animation component
├── lib/
│   └── utils.ts              # Utility functions
└── components.json           # shadcn/ui config
```

## Notes

- The Three.js library is loaded dynamically from a CDN to keep bundle size small
- The component uses WebGL shaders for the animation
- The animation is fully responsive and adapts to container size
