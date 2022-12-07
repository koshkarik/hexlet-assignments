# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  minor1, patch1 = ver1.split('.').map(&:to_i)
  minor2, patch2 = ver2.split('.').map(&:to_i)

  if minor1 != minor2
    return minor1 > minor2 ? 1 : -1
  end

  if patch1 != patch2
    return patch1 > patch2 ? 1 : -1
  end

  0
end

# END
