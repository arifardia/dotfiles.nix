{
  programs.helix = {
    enable = true;
    defaultEditor = true;

    languages = {
      language = [{
        name = "rust";
        auto-format = true;
      }];
    };

    settings.theme = "onedark";
    settings.editor = {
      middle-click-paste = false;
      bufferline = "multiple";
      true-color = true;
      color-modes = true;
      cursorline = true;
      cursor-shape = {
        insert = "bar";
        normal = "block";
        select = "underline";
      };

      whitespace.render = "all";
      whitespace.characters = {
        space = " ";
        nbsp = "⍽";
        tab = "→";
        newline = "⏎";
        tabpad = " ";  
      };  
      
      lsp = {
        display-messages = true;  # default false
        display-inlay-hints = true;
      };

      soft-wrap = {
        enable = true;
        max-wrap = 25;
        wrap-indicator = "↪"; # set wrap-indicator to "" to hide it
      };

      file-picker = {
        hidden = false;
      };

      indent-guides = {
        render = true;
        character = "╎";
        skip-levels = 0;
      };

      statusline = {
        left = ["mode" "spacer" "spinner" "spacer" "version-control" "spacer" "file-name" "file-modification-indicator"];
        center = ["diagnostics" "workspace-diagnostics"];
        right = ["selections" "primary-selection-length" "position" "position-percentage" "file-encoding" "file-line-ending" "file-type"];
        separator = "|";
        mode = {
          normal = "NOR";
          insert = "INS";
          select = "SEL";
        };
      };
    };
  };
}