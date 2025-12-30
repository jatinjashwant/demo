import { ShaderAnimation } from "@/components/ui/shader-lines";

export default function DemoOne() {
  return (
    <div className="relative flex min-h-screen w-full flex-col items-center justify-center overflow-hidden">
      <ShaderAnimation/>
      <span className="pointer-events-none z-10 text-center text-7xl leading-none font-semibold tracking-tighter whitespace-pre-wrap text-white">
        Shader Lines
      </span>
    </div>
  )
}

