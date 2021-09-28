def shrink_path(path, size=1):
    """Shrink a path so a shorter form"""
    import re
    # fish does a similar thing in its prompt_pwd
    path = re.sub(r'^' + $HOME + '($|/)', r'~\1', str(path))
    return re.sub(r'(\.?[^/]{' + str(size) + r'})[^/]*/', r'\1/', path)
