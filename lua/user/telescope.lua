local present, telescope = pcall(require, "telescope")
if not present then
  return
end

telescope.setup()

