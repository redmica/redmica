# frozen_string_literal: true

# Redmine - project management software
# Copyright (C) 2006-  Jean-Philippe Lang
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

module AvatarsHelper
  include GravatarHelper::PublicMethods

  def assignee_avatar(user, options={})
    return '' unless user

    options[:title] = l(:field_assigned_to) + ": " + user.name
    avatar(user, options).to_s.html_safe
  end

  def author_avatar(user, options={})
    return '' unless user

    options[:title] = l(:field_author) + ": " + user.name
    avatar(user, options).to_s.html_safe
  end

  # Returns the avatar image tag for the given +user+ if avatars are enabled
  # +user+ can be a User or a string that will be scanned for an email address (eg. 'joe <joe@foo.bar>')
  def avatar(user, options = {})
    # "avatar" class should be added to all avatars
    options[:class] = ['avatar', options[:class]].compact.join(' ')

    if user.is_a?(AnonymousUser)
      anonymous_avatar(options)
    elsif user.is_a?(Group)
      group_avatar(options)
    elsif Setting.gravatar_enabled?
      gravatar_avatar_tag(user, options)
    elsif user.respond_to?(:initials)
      initials_avatar_tag(user, options)
    else
      ''
    end
  end

  # Returns a link to edit user's avatar if avatars are enabled
  def avatar_edit_link(user, options={})
    if Setting.gravatar_enabled?
      url = Redmine::Configuration['avatar_server_url']
      link_to avatar(user, {:title => l(:button_edit)}.merge(options)), url, :target => '_blank'
    end
  end

  def anonymous_avatar(options={})
    options[:class] = ['anonymous-avatar', options[:class]].compact.join(' ')
    image_tag 'anonymous.png', GravatarHelper::DEFAULT_OPTIONS.except(:default, :rating, :ssl).merge(options)
  end

  def group_avatar(options={})
    options[:class] = ['group-avatar', options[:class]].compact.join(' ')
    image_tag 'group.png', GravatarHelper::DEFAULT_OPTIONS.except(:default, :rating, :ssl).merge(options)
  end

  private

  def gravatar_avatar_tag(user, options)
    options[:default] = Setting.gravatar_default
    options[:class] = [GravatarHelper::DEFAULT_OPTIONS[:class], options[:class]].compact.join(' ')

    email = extract_email_from_user(user)

    if user.respond_to?(:mail)
      options[:title] ||= user.name
      options[:initials] = user.initials if options[:default] == "initials" && user.initials.present?
    end

    if email.present?
      gravatar(email.to_s.downcase, options) rescue nil
    end
  end

  def initials_avatar_tag(user, options)
    size = (options.delete(:size) || GravatarHelper::DEFAULT_OPTIONS[:size]).to_i

    css_class = ["avatar-color-#{user.id % 8}", "s#{size}", options[:class]].compact.join(' ')

    content_tag('span', user.initials, role: 'img', class: css_class, title: options[:title])
  end

  def extract_email_from_user(user)
    if user.respond_to?(:mail)
      user.mail
    elsif user.to_s =~ %r{<(.+?)>}
      $1
    end
  end
end
