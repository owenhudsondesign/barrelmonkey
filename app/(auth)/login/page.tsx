import { LoginForm } from './login-form'

export const metadata = {
  title: 'Sign In — BarrelMonkey',
}

export default function LoginPage() {
  return (
    <div className="w-full max-w-sm">
      <div className="text-center mb-8">
        <h1 className="text-2xl font-bold text-white tracking-tight">BarrelMonkey</h1>
        <p className="text-white/40 text-sm mt-1">Triple Eight Distillery</p>
      </div>
      <LoginForm />
    </div>
  )
}
