// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;

const MediaListCollection = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'MediaListCollection'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'userId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'type')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'MediaType'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'status')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'MediaListStatus'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'sort')),
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'MediaListSort'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'MediaListCollection'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'userId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'userId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'type'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'type')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'status'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'status')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'sort'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'sort')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'lists'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
              name: _i1.NameNode(value: 'entries'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: _i1.SelectionSetNode(selections: [
                _i1.FieldNode(
                  name: _i1.NameNode(value: 'media'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: _i1.SelectionSetNode(selections: [
                    _i1.FieldNode(
                      name: _i1.NameNode(value: 'mediaListEntry'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: _i1.SelectionSetNode(selections: [
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'userId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'status'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'score'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'progress'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'progressVolumes'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ]),
                    ),
                    _i1.FieldNode(
                      name: _i1.NameNode(value: 'id'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                    _i1.FieldNode(
                      name: _i1.NameNode(value: 'title'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: _i1.SelectionSetNode(selections: [
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'romaji'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'english'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'userPreferred'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ]),
                    ),
                    _i1.FieldNode(
                      name: _i1.NameNode(value: 'coverImage'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: _i1.SelectionSetNode(selections: [
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'medium'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'large'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'extraLarge'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        _i1.FieldNode(
                          name: _i1.NameNode(value: 'color'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ]),
                    ),
                    _i1.FieldNode(
                      name: _i1.NameNode(value: 'bannerImage'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                    _i1.FieldNode(
                      name: _i1.NameNode(value: 'episodes'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                    _i1.FieldNode(
                      name: _i1.NameNode(value: 'chapters'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                    _i1.FieldNode(
                      name: _i1.NameNode(value: 'volumes'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                    _i1.FieldNode(
                      name: _i1.NameNode(value: 'format'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                  ]),
                )
              ]),
            )
          ]),
        )
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [MediaListCollection]);
