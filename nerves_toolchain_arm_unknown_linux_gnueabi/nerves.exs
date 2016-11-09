use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

package = :nerves_toolchain_arm_unknown_linux_gnueabihf

config package, :nerves_env,
  type: :toolchain,
  version: version,
  compiler: :nerves_package,
  platform: Nerves.Toolchain.CTNG,
  target_tuple: :arm_unknown_linux_gnueabi,
  artifact_url: [
    "https://github.com/nerves-project/toolchains/releases/download/v#{version}/#{package}-#{version}.#{Nerves.Env.host_platform}-#{Nerves.Env.host_arch}.tar.xz"
  ]
