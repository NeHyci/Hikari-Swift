//// Automatically generated by generate-swiftsyntax
//// Do not edit directly!
//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

// MARK: - ExpressionPatternSyntax



/// ### Children
/// 
///  - `expression`: ``ExprSyntax``
public struct ExpressionPatternSyntax: PatternSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax
  
  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .expressionPattern else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// Creates a `ExpressionPatternSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    precondition(data.raw.kind == .expressionPattern)
    self._syntaxNode = Syntax(data)
  }
  
  public init<E: ExprSyntaxProtocol>(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
      expression: E,
      _ unexpectedAfterExpression: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeExpression, expression, unexpectedAfterExpression))) { (arena, _) in
      let layout: [RawSyntax?] = [unexpectedBeforeExpression?.raw, expression.raw, unexpectedAfterExpression?.raw]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.expressionPattern,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }
  
  public var unexpectedBeforeExpression: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ExpressionPatternSyntax(data.replacingChild(at: 0, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var expression: ExprSyntax {
    get {
      return ExprSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = ExpressionPatternSyntax(data.replacingChild(at: 1, with: value.data, arena: SyntaxArena()))
    }
  }
  
  public var unexpectedAfterExpression: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ExpressionPatternSyntax(data.replacingChild(at: 2, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([\Self.unexpectedBeforeExpression, \Self.expression, \Self.unexpectedAfterExpression])
  }
}

// MARK: - IdentifierPatternSyntax



/// ### Children
/// 
///  - `identifier`: (`<identifier>` | `<keyword>`)
public struct IdentifierPatternSyntax: PatternSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax
  
  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .identifierPattern else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// Creates a `IdentifierPatternSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    precondition(data.raw.kind == .identifierPattern)
    self._syntaxNode = Syntax(data)
  }
  
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeIdentifier: UnexpectedNodesSyntax? = nil,
      identifier: TokenSyntax,
      _ unexpectedAfterIdentifier: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforeIdentifier, identifier, unexpectedAfterIdentifier))) { (arena, _) in
      let layout: [RawSyntax?] = [unexpectedBeforeIdentifier?.raw, identifier.raw, unexpectedAfterIdentifier?.raw]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.identifierPattern,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }
  
  public var unexpectedBeforeIdentifier: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = IdentifierPatternSyntax(data.replacingChild(at: 0, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var identifier: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = IdentifierPatternSyntax(data.replacingChild(at: 1, with: value.data, arena: SyntaxArena()))
    }
  }
  
  public var unexpectedAfterIdentifier: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = IdentifierPatternSyntax(data.replacingChild(at: 2, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([\Self.unexpectedBeforeIdentifier, \Self.identifier, \Self.unexpectedAfterIdentifier])
  }
}

// MARK: - IsTypePatternSyntax



/// ### Children
/// 
///  - `isKeyword`: `'is'`
///  - `type`: ``TypeSyntax``
public struct IsTypePatternSyntax: PatternSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax
  
  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .isTypePattern else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// Creates a `IsTypePatternSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    precondition(data.raw.kind == .isTypePattern)
    self._syntaxNode = Syntax(data)
  }
  
  public init<T: TypeSyntaxProtocol>(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeIsKeyword: UnexpectedNodesSyntax? = nil,
      isKeyword: TokenSyntax = .keyword(.is),
      _ unexpectedBetweenIsKeywordAndType: UnexpectedNodesSyntax? = nil,
      type: T,
      _ unexpectedAfterType: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeIsKeyword, 
            isKeyword, 
            unexpectedBetweenIsKeywordAndType, 
            type, 
            unexpectedAfterType
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeIsKeyword?.raw, 
          isKeyword.raw, 
          unexpectedBetweenIsKeywordAndType?.raw, 
          type.raw, 
          unexpectedAfterType?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.isTypePattern,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }
  
  public var unexpectedBeforeIsKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = IsTypePatternSyntax(data.replacingChild(at: 0, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var isKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = IsTypePatternSyntax(data.replacingChild(at: 1, with: value.data, arena: SyntaxArena()))
    }
  }
  
  public var unexpectedBetweenIsKeywordAndType: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = IsTypePatternSyntax(data.replacingChild(at: 2, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var type: TypeSyntax {
    get {
      return TypeSyntax(data.child(at: 3, parent: Syntax(self))!)
    }
    set(value) {
      self = IsTypePatternSyntax(data.replacingChild(at: 3, with: value.data, arena: SyntaxArena()))
    }
  }
  
  public var unexpectedAfterType: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = IsTypePatternSyntax(data.replacingChild(at: 4, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeIsKeyword, 
          \Self.isKeyword, 
          \Self.unexpectedBetweenIsKeywordAndType, 
          \Self.type, 
          \Self.unexpectedAfterType
        ])
  }
}

// MARK: - MissingPatternSyntax

/// In case the source code is missing a pattern, this node stands in place of the missing pattern.
///
/// ### Children
/// 
///  - `placeholder`: `<identifier>`
public struct MissingPatternSyntax: PatternSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax
  
  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .missingPattern else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// Creates a `MissingPatternSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    precondition(data.raw.kind == .missingPattern)
    self._syntaxNode = Syntax(data)
  }
  
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforePlaceholder: UnexpectedNodesSyntax? = nil,
      placeholder: TokenSyntax,
      _ unexpectedAfterPlaceholder: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (unexpectedBeforePlaceholder, placeholder, unexpectedAfterPlaceholder))) { (arena, _) in
      let layout: [RawSyntax?] = [unexpectedBeforePlaceholder?.raw, placeholder.raw, unexpectedAfterPlaceholder?.raw]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.missingPattern,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }
  
  public var unexpectedBeforePlaceholder: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = MissingPatternSyntax(data.replacingChild(at: 0, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  /// A placeholder, i.e. `<#pattern#>` that can be inserted into the source code to represent the missing pattern./// This token should always have `presence = .missing`.
  public var placeholder: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = MissingPatternSyntax(data.replacingChild(at: 1, with: value.data, arena: SyntaxArena()))
    }
  }
  
  public var unexpectedAfterPlaceholder: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = MissingPatternSyntax(data.replacingChild(at: 2, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([\Self.unexpectedBeforePlaceholder, \Self.placeholder, \Self.unexpectedAfterPlaceholder])
  }
}

// MARK: - TuplePatternSyntax



/// ### Children
/// 
///  - `leftParen`: `'('`
///  - `elements`: ``TuplePatternElementListSyntax``
///  - `rightParen`: `')'`
public struct TuplePatternSyntax: PatternSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax
  
  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .tuplePattern else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// Creates a `TuplePatternSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    precondition(data.raw.kind == .tuplePattern)
    self._syntaxNode = Syntax(data)
  }
  
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeLeftParen: UnexpectedNodesSyntax? = nil,
      leftParen: TokenSyntax = .leftParenToken(),
      _ unexpectedBetweenLeftParenAndElements: UnexpectedNodesSyntax? = nil,
      elements: TuplePatternElementListSyntax,
      _ unexpectedBetweenElementsAndRightParen: UnexpectedNodesSyntax? = nil,
      rightParen: TokenSyntax = .rightParenToken(),
      _ unexpectedAfterRightParen: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeLeftParen, 
            leftParen, 
            unexpectedBetweenLeftParenAndElements, 
            elements, 
            unexpectedBetweenElementsAndRightParen, 
            rightParen, 
            unexpectedAfterRightParen
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeLeftParen?.raw, 
          leftParen.raw, 
          unexpectedBetweenLeftParenAndElements?.raw, 
          elements.raw, 
          unexpectedBetweenElementsAndRightParen?.raw, 
          rightParen.raw, 
          unexpectedAfterRightParen?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.tuplePattern,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }
  
  public var unexpectedBeforeLeftParen: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = TuplePatternSyntax(data.replacingChild(at: 0, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var leftParen: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = TuplePatternSyntax(data.replacingChild(at: 1, with: value.data, arena: SyntaxArena()))
    }
  }
  
  public var unexpectedBetweenLeftParenAndElements: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = TuplePatternSyntax(data.replacingChild(at: 2, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var elements: TuplePatternElementListSyntax {
    get {
      return TuplePatternElementListSyntax(data.child(at: 3, parent: Syntax(self))!)
    }
    set(value) {
      self = TuplePatternSyntax(data.replacingChild(at: 3, with: value.data, arena: SyntaxArena()))
    }
  }
  
  /// Adds the provided `Element` to the node's `elements`
  /// collection.
  /// - param element: The new `Element` to add to the node's
  ///                  `elements` collection.
  /// - returns: A copy of the receiver with the provided `Element`
  ///            appended to its `elements` collection.
  public func addElement(_ element: TuplePatternElementSyntax) -> TuplePatternSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[3] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.tuplePatternElementList,
                                        from: [element.raw], arena: arena)
    }
    let newData = data.replacingChild(at: 3, with: collection, arena: arena)
    return TuplePatternSyntax(newData)
  }
  
  public var unexpectedBetweenElementsAndRightParen: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = TuplePatternSyntax(data.replacingChild(at: 4, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var rightParen: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 5, parent: Syntax(self))!)
    }
    set(value) {
      self = TuplePatternSyntax(data.replacingChild(at: 5, with: value.data, arena: SyntaxArena()))
    }
  }
  
  public var unexpectedAfterRightParen: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 6, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = TuplePatternSyntax(data.replacingChild(at: 6, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeLeftParen, 
          \Self.leftParen, 
          \Self.unexpectedBetweenLeftParenAndElements, 
          \Self.elements, 
          \Self.unexpectedBetweenElementsAndRightParen, 
          \Self.rightParen, 
          \Self.unexpectedAfterRightParen
        ])
  }
}

// MARK: - ValueBindingPatternSyntax



/// ### Children
/// 
///  - `bindingKeyword`: (`'let'` | `'var'` | `'inout'`)
///  - `valuePattern`: ``PatternSyntax``
public struct ValueBindingPatternSyntax: PatternSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax
  
  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .valueBindingPattern else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// Creates a `ValueBindingPatternSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    precondition(data.raw.kind == .valueBindingPattern)
    self._syntaxNode = Syntax(data)
  }
  
  public init<V: PatternSyntaxProtocol>(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeBindingKeyword: UnexpectedNodesSyntax? = nil,
      bindingKeyword: TokenSyntax,
      _ unexpectedBetweenBindingKeywordAndValuePattern: UnexpectedNodesSyntax? = nil,
      valuePattern: V,
      _ unexpectedAfterValuePattern: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeBindingKeyword, 
            bindingKeyword, 
            unexpectedBetweenBindingKeywordAndValuePattern, 
            valuePattern, 
            unexpectedAfterValuePattern
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeBindingKeyword?.raw, 
          bindingKeyword.raw, 
          unexpectedBetweenBindingKeywordAndValuePattern?.raw, 
          valuePattern.raw, 
          unexpectedAfterValuePattern?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.valueBindingPattern,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }
  
  public var unexpectedBeforeBindingKeyword: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ValueBindingPatternSyntax(data.replacingChild(at: 0, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var bindingKeyword: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = ValueBindingPatternSyntax(data.replacingChild(at: 1, with: value.data, arena: SyntaxArena()))
    }
  }
  
  public var unexpectedBetweenBindingKeywordAndValuePattern: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ValueBindingPatternSyntax(data.replacingChild(at: 2, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var valuePattern: PatternSyntax {
    get {
      return PatternSyntax(data.child(at: 3, parent: Syntax(self))!)
    }
    set(value) {
      self = ValueBindingPatternSyntax(data.replacingChild(at: 3, with: value.data, arena: SyntaxArena()))
    }
  }
  
  public var unexpectedAfterValuePattern: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = ValueBindingPatternSyntax(data.replacingChild(at: 4, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeBindingKeyword, 
          \Self.bindingKeyword, 
          \Self.unexpectedBetweenBindingKeywordAndValuePattern, 
          \Self.valuePattern, 
          \Self.unexpectedAfterValuePattern
        ])
  }
}

// MARK: - WildcardPatternSyntax



/// ### Children
/// 
///  - `wildcard`: `'_'`
///  - `typeAnnotation`: ``TypeAnnotationSyntax``?
public struct WildcardPatternSyntax: PatternSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax
  
  public init?<S: SyntaxProtocol>(_ node: S) {
    guard node.raw.kind == .wildcardPattern else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// Creates a `WildcardPatternSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    precondition(data.raw.kind == .wildcardPattern)
    self._syntaxNode = Syntax(data)
  }
  
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeWildcard: UnexpectedNodesSyntax? = nil,
      wildcard: TokenSyntax = .wildcardToken(),
      _ unexpectedBetweenWildcardAndTypeAnnotation: UnexpectedNodesSyntax? = nil,
      typeAnnotation: TypeAnnotationSyntax? = nil,
      _ unexpectedAfterTypeAnnotation: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    let data: SyntaxData = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeWildcard, 
            wildcard, 
            unexpectedBetweenWildcardAndTypeAnnotation, 
            typeAnnotation, 
            unexpectedAfterTypeAnnotation
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeWildcard?.raw, 
          wildcard.raw, 
          unexpectedBetweenWildcardAndTypeAnnotation?.raw, 
          typeAnnotation?.raw, 
          unexpectedAfterTypeAnnotation?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.wildcardPattern,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return SyntaxData.forRoot(raw)
    }
    self.init(data)
  }
  
  public var unexpectedBeforeWildcard: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 0, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = WildcardPatternSyntax(data.replacingChild(at: 0, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var wildcard: TokenSyntax {
    get {
      return TokenSyntax(data.child(at: 1, parent: Syntax(self))!)
    }
    set(value) {
      self = WildcardPatternSyntax(data.replacingChild(at: 1, with: value.data, arena: SyntaxArena()))
    }
  }
  
  public var unexpectedBetweenWildcardAndTypeAnnotation: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 2, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = WildcardPatternSyntax(data.replacingChild(at: 2, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var typeAnnotation: TypeAnnotationSyntax? {
    get {
      return data.child(at: 3, parent: Syntax(self)).map(TypeAnnotationSyntax.init)
    }
    set(value) {
      self = WildcardPatternSyntax(data.replacingChild(at: 3, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public var unexpectedAfterTypeAnnotation: UnexpectedNodesSyntax? {
    get {
      return data.child(at: 4, parent: Syntax(self)).map(UnexpectedNodesSyntax.init)
    }
    set(value) {
      self = WildcardPatternSyntax(data.replacingChild(at: 4, with: value?.data, arena: SyntaxArena()))
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeWildcard, 
          \Self.wildcard, 
          \Self.unexpectedBetweenWildcardAndTypeAnnotation, 
          \Self.typeAnnotation, 
          \Self.unexpectedAfterTypeAnnotation
        ])
  }
}