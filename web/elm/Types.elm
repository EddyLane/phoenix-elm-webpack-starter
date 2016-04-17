module Types where

type alias Post = { user: String, content: String }

type alias Model = { posts: List Post }

type Action = NoOp