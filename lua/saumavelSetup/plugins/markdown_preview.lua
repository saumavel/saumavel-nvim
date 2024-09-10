-- Preview Markdown in your modern browser with synchronised scrolling and flexible configuration.
-- Til þess að prufa markdown í browser.
-- Spyrja Matta.
return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
}
