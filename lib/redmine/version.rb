# frozen_string_literal: true

require 'redmine/scm/adapters/subversion_adapter'

module Redmine
  # @private
  module VERSION
    MAJOR = 5
    MINOR = 0
    TINY  = 2

    # Branch values:
    # * official release: nil
    # * stable branch:    stable
    # * trunk:            devel
    BRANCH = 'devel'

    def self.revision
      21619 # RedMica 2.1 is based on r21619
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
    MINOR = 1
    TINY  = 0

    BRANCH = 'stable'

    # Retrieves the revision from the working copy
    def self.revision
      return nil if BRANCH.nil?
      return File.read(File.join(Rails.root, '.git/refs/heads/master'))[0..6]
    rescue
      # Could not find the current revision
      nil
    end

    REVISION = self.revision
    ARRAY    = [MAJOR, MINOR, TINY, BRANCH, REVISION].compact
    STRING   = ARRAY.join('.')

    def self.to_a; ARRAY  end
    def self.to_s; STRING end
  end
end
