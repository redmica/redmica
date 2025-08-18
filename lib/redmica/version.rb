# frozen_string_literal: true

module RedMica
  module VERSION
    MAJOR = 3
    MINOR = 2
    TINY  = 4

    BRANCH = 'devel'

    # Retrieves the revision from the working copy
    def self.revision
      nil
    end

    REVISION = self.revision
    ARRAY    = [MAJOR, MINOR, TINY, BRANCH, REVISION].compact
    STRING   = ARRAY.join('.')

    def self.to_a; ARRAY  end
    def self.to_s; STRING end
  end
end
