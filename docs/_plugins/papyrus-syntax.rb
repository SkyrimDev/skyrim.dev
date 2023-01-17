# Thanks to LinkedIn's lexer: https://github.com/linkedin/rest.li/blob/gh-pages-source/src/_plugins/pdl_highlighter.rb
# and https://stackoverflow.com/questions/61814907/how-to-specify-a-custom-language-parser-alias-for-rouge-in-jekyll-3
#
# This "hook" is executed right before the site's pages are rendered
Jekyll::Hooks.register :site, :pre_render do |site|
  puts "Adding more JavaScript Markdown aliases..."
  require "rouge"

  # This class defines the PDL lexer which is used to highlight "pdl" code snippets during render-time
  class PapyrusLexer < Rouge::Lexers::Javascript
    title 'Papyrus'
    desc 'Papyrus syntax highligher'
    aliases 'psc', 'papyrus'
    tag 'psc'
    filenames '*.psc'

    primitives = %w(int float string bool)

    state :mixins do
      mixin :whitespace
      mixin :comment
      mixin :property
    end

    state :whitespace do
      rule %r/[\s,]/, Punctuation
    end

    state :comment do
      rule %r(;.*?$), Comment::Single
      rule %r(/\{.*?\}/)m, Comment::Multiline
    end
  end
end
