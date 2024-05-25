{
  description = "zidhuss flake templates";

  outputs = {self}: {
    templates = {
      default = {
        name = "default";
        description = "An empty flake template";
        path = ./default;
      };
    };
  };
}
