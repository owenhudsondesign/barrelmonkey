import { getUsers } from '@/lib/queries/admin'
import { formatDate } from '@/lib/utils/format'

export async function UserList() {
  const users = await getUsers()

  return (
    <div>
      <div className="text-xs text-white/30 mb-3">{users.length} users</div>

      <div className="rounded-lg border border-white/10 overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-white/[0.08] text-left text-xs text-white/40">
              <th className="px-4 py-3 font-medium">Name</th>
              <th className="px-4 py-3 font-medium">Email</th>
              <th className="px-4 py-3 font-medium">Role</th>
              <th className="px-4 py-3 font-medium">Active</th>
              <th className="px-4 py-3 font-medium">Created</th>
            </tr>
          </thead>
          <tbody>
            {users.map((user) => (
              <tr
                key={user.id}
                className="border-b border-white/[0.04] hover:bg-white/[0.02] transition-colors"
              >
                <td className="px-4 py-3 text-white/80 font-medium">{user.full_name}</td>
                <td className="px-4 py-3 text-white/60">{user.email}</td>
                <td className="px-4 py-3">
                  <span className={`text-xs px-2 py-0.5 rounded-full border ${
                    user.role === 'admin'
                      ? 'bg-accent/10 text-accent border-accent/20'
                      : 'bg-white/[0.06] text-white/50 border-white/10'
                  }`}>
                    {user.role}
                  </span>
                </td>
                <td className="px-4 py-3">
                  {user.active ? (
                    <span className="text-xs text-success">Active</span>
                  ) : (
                    <span className="text-xs text-error">Inactive</span>
                  )}
                </td>
                <td className="px-4 py-3 text-white/60">{formatDate(user.created_at)}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  )
}
