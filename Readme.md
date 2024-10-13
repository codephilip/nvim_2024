# Neovim Plugin Key Mappings

## 1. Telescope (`plugins/telescope.lua`)

Telescope provides fuzzy searching for files, buffers, LSP functions, and more.

- **Find files**: `<leader>ff`
  - Opens a Telescope prompt to search for files in your current project.
- **Live grep**: `<leader>fg`
  - Allows searching through files using a keyword.
- **Find buffers**: `<leader>fb`
  - Lists all open buffers for easy navigation.
- **Find help tags**: `<leader>fh`
  - Searches through Neovim's help tags for documentation.

## 2. Gitsigns (`plugins/gitsigns.lua`)

This plugin adds Git-related signs in the sign column and provides inline git integration.

- **Stage hunk**: `<leader>hs`
  - Stage the current Git hunk.
- **Undo stage hunk**: `<leader>hu`
  - Revert the last staged hunk.
- **Reset hunk**: `<leader>hr`
  - Reset the current hunk to the state in the index.
- **Preview hunk**: `<leader>hp`
  - Preview the changes in the hunk.

## 3. Bufferline (`plugins/bufferline.lua`)

Bufferline provides a tab-like view for your open buffers.

- **Next buffer**: `<Tab>`
  - Move to the next buffer.
- **Previous buffer**: `<S-Tab>`
  - Move to the previous buffer.
- **Close buffer**: `<leader>bc`
  - Close the current buffer.

## 4. Neo-tree (`plugins/neo-tree.lua`)

Neo-tree is a modern file explorer.

- **Toggle file tree**: `<leader>e`
  - Opens/closes the file explorer.

## 5. Lualine (`plugins/lualine.lua`)

Lualine is the status line plugin, but it does not require specific keybindings.

## 6. Harpoon (`plugins/harpoon.lua`)

Harpoon allows you to mark files for quick access and jump between them.

- **Add file to harpoon**: `<leader>a`
  - Mark the current file to the Harpoon list.
- **Toggle Harpoon menu**: `<C-e>`
  - Show all marked files.
- **Navigate to file 1, 2, 3, etc.**: `<leader>1`, `<leader>2`, etc.
  - Quickly jump to the marked files in order.

## 7. LSP (Language Server Protocol) (`plugins/lsp.lua`)

LSP provides language-specific features such as go-to-definition, diagnostics, and more.

- **Go to Definition**: `gd`
  - Jump to the definition of the word under the cursor.
- **Find References**: `gr`
  - Show all references for the symbol under the cursor.
- **Implementation**: `gI`
  - Jump to the implementation of a function or type.
- **Hover Documentation**: `K`
  - Show hover information for the symbol under the cursor.
- **Rename Symbol**: `<leader>rn`
  - Rename the symbol under the cursor.
- **Diagnostics**:
  - **Next Diagnostic**: `]d`
  - **Previous Diagnostic**: `[d`

## 8. LazyGit (`plugins/lazygit.lua`)

LazyGit provides a quick way to open a Git UI.

- **Open LazyGit**: `<leader>gg`
  - Launches the LazyGit interface.

## 9. Treesitter (`plugins/treesitter.lua`)

Treesitter improves syntax highlighting and code navigation.

- **Incremental selection**:
  - **Start selection**: `<leader>is`
  - **Expand selection**: `<leader>ie`
  - **Shrink selection**: `<leader>ir`

## 10. Comment.nvim (`plugins/comment.lua`)

This plugin allows for easy commenting of code blocks.

- **Toggle comment**: `gc`
  - Comment or uncomment the current line or selection.
- **Line comment**: `gcc`
  - Quickly comment the current line.
- **Block comment**: `gbc`
  - Toggle block comments for the current selection.

## 11. Autocompletion (`plugins/autocompletion.lua`)

This sets up auto-completion for your LSP using `nvim-cmp`.

- **Confirm selection**: `<C-y>`
  - Accept the currently selected completion suggestion.
- **Next suggestion**: `<C-n>`
  - Navigate to the next completion item.
- **Previous suggestion**: `<C-p>`
  - Navigate to the previous completion item.

## 12. Alpha (`plugins/alpha.lua`)

Alpha provides a custom dashboard for Neovim. It usually doesn't require specific keybindings.
