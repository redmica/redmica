# frozen_string_literal: true

require 'redmine/scm/adapters/subversion_adapter'

module Redmine
  # @private
  module VERSION
    MAJOR = 5
    MINOR = 0
    TINY  = 4

    # Branch values:
    # * official release: nil
    # * stable branch:    stable
    # * trunk:            devel
    BRANCH = 'devel'

    def self.revision
      21960 # RedMica 2.2 is based on this revision of Redmine trunk
    end

    REVISION = self.revision
    ARRAY    = [MAJOR, MINOR, TINY, BRANCH, REVISION].compact
    STRING   = ARRAY.join('.')

    def self.to_a; ARRAY  end
    def self.to_s; STRING end
  end
end

module RedMica
  module VERSION
    MAJOR = 2
    MINOR = 2
    TINY  = 0

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