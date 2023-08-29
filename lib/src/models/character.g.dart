// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const CharacterSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Character',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'health',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'stamina',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'strength',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'endurance',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'mind',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'inventory',
        type: IsarType.objectList,
        target: 'Item',
      ),
      IsarPropertySchema(
        name: 'proficiency',
        type: IsarType.byteList,
        enumMap: {
          "club": 0,
          "dagger": 1,
          "greatclub": 2,
          "sickle": 3,
          "spear": 4,
          "staff": 5,
          "crossbow": 6,
          "bow": 7,
          "flail": 8,
          "battlaxe": 9,
          "greatsword": 10,
          "shortsword": 11,
          "longsword": 12,
          "whip": 13,
          "improvised": 14
        },
      ),
      IsarPropertySchema(
        name: 'status',
        type: IsarType.byteList,
        enumMap: {
          "poisoned": 0,
          "tired": 1,
          "hypnotized": 2,
          "asleep": 3,
          "overencumbered": 4
        },
      ),
      IsarPropertySchema(
        name: 'body',
        type: IsarType.json,
      ),
      IsarPropertySchema(
        name: 'online',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'strengthEx',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'enduranceEx',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'mindEx',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, Character>(
    serialize: serializeCharacter,
    deserialize: deserializeCharacter,
  ),
);

@isarProtected
int serializeCharacter(IsarWriter writer, Character object) {
  IsarCore.writeString(writer, 1, object.name);
  IsarCore.writeLong(writer, 2, object.health);
  IsarCore.writeLong(writer, 3, object.stamina);
  IsarCore.writeLong(writer, 4, object.strength);
  IsarCore.writeLong(writer, 5, object.endurance);
  IsarCore.writeLong(writer, 6, object.mind);
  {
    final list = object.inventory;
    final listWriter = IsarCore.beginList(writer, 7, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeItem(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  {
    final list = object.proficiency;
    final listWriter = IsarCore.beginList(writer, 8, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeByte(listWriter, i, list[i].index);
    }
    IsarCore.endList(writer, listWriter);
  }
  {
    final list = object.status;
    final listWriter = IsarCore.beginList(writer, 9, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeByte(listWriter, i, list[i].index);
    }
    IsarCore.endList(writer, listWriter);
  }
  IsarCore.writeString(writer, 10, isarJsonEncode(object.body));
  IsarCore.writeBool(writer, 11, object.online);
  IsarCore.writeLong(writer, 12, object.strengthEx);
  IsarCore.writeLong(writer, 13, object.enduranceEx);
  IsarCore.writeLong(writer, 14, object.mindEx);
  return 0;
}

@isarProtected
Character deserializeCharacter(IsarReader reader) {
  final String _name;
  _name = IsarCore.readString(reader, 1) ?? '';
  final object = Character(
    name: _name,
  );
  object.online = IsarCore.readBool(reader, 11);
  object.strengthEx = IsarCore.readLong(reader, 12);
  object.enduranceEx = IsarCore.readLong(reader, 13);
  object.mindEx = IsarCore.readLong(reader, 14);
  return object;
}

const _characterProficiency = {
  0: Proficiencies.club,
  1: Proficiencies.dagger,
  2: Proficiencies.greatclub,
  3: Proficiencies.sickle,
  4: Proficiencies.spear,
  5: Proficiencies.staff,
  6: Proficiencies.crossbow,
  7: Proficiencies.bow,
  8: Proficiencies.flail,
  9: Proficiencies.battlaxe,
  10: Proficiencies.greatsword,
  11: Proficiencies.shortsword,
  12: Proficiencies.longsword,
  13: Proficiencies.whip,
  14: Proficiencies.improvised,
};
const _characterStatus = {
  0: Conditions.poisoned,
  1: Conditions.tired,
  2: Conditions.hypnotized,
  3: Conditions.asleep,
  4: Conditions.overencumbered,
};

extension CharacterQueryFilter
    on QueryBuilder<Character, Character, QFilterCondition> {
  QueryBuilder<Character, Character, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> healthEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> healthGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      healthGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> healthLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      healthLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> healthBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> staminaEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> staminaGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      staminaGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> staminaLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      staminaLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> staminaBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> strengthEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> strengthGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      strengthGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> strengthLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      strengthLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> strengthBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> enduranceEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      enduranceGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      enduranceGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> enduranceLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      enduranceLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> enduranceBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> mindEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> mindGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      mindGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> mindLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      mindLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> mindBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> inventoryIsEmpty() {
    return not().inventoryIsNotEmpty();
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      inventoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 7, value: null),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      proficiencyElementEqualTo(
    Proficiencies value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      proficiencyElementGreaterThan(
    Proficiencies value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      proficiencyElementGreaterThanOrEqualTo(
    Proficiencies value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      proficiencyElementLessThan(
    Proficiencies value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      proficiencyElementLessThanOrEqualTo(
    Proficiencies value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      proficiencyElementBetween(
    Proficiencies lower,
    Proficiencies upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      proficiencyIsEmpty() {
    return not().proficiencyIsNotEmpty();
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      proficiencyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 8, value: null),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      statusElementEqualTo(
    Conditions value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      statusElementGreaterThan(
    Conditions value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 9,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      statusElementGreaterThanOrEqualTo(
    Conditions value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 9,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      statusElementLessThan(
    Conditions value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 9,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      statusElementLessThanOrEqualTo(
    Conditions value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 9,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      statusElementBetween(
    Conditions lower,
    Conditions upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 9,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> statusIsEmpty() {
    return not().statusIsNotEmpty();
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 9, value: null),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> onlineEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> strengthExEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 12,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      strengthExGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 12,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      strengthExGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 12,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> strengthExLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 12,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      strengthExLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 12,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> strengthExBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 12,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> enduranceExEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      enduranceExGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      enduranceExGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> enduranceExLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      enduranceExLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> enduranceExBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 13,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> mindExEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> mindExGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      mindExGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> mindExLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition>
      mindExLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Character, Character, QAfterFilterCondition> mindExBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 14,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension CharacterQueryObject
    on QueryBuilder<Character, Character, QFilterCondition> {}
