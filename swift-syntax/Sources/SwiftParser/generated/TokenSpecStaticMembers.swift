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

@_spi(RawSyntax) import SwiftSyntax

extension TokenSpec {
  static var eof: TokenSpec {
    return TokenSpec(.eof)
  }
  
  static var arrow: TokenSpec {
    return TokenSpec(.arrow)
  }
  
  static var atSign: TokenSpec {
    return TokenSpec(.atSign)
  }
  
  static var backslash: TokenSpec {
    return TokenSpec(.backslash)
  }
  
  static var backtick: TokenSpec {
    return TokenSpec(.backtick)
  }
  
  static var binaryOperator: TokenSpec {
    return TokenSpec(.binaryOperator)
  }
  
  static var colon: TokenSpec {
    return TokenSpec(.colon)
  }
  
  static var comma: TokenSpec {
    return TokenSpec(.comma)
  }
  
  static var dollarIdentifier: TokenSpec {
    return TokenSpec(.dollarIdentifier)
  }
  
  static var ellipsis: TokenSpec {
    return TokenSpec(.ellipsis)
  }
  
  static var equal: TokenSpec {
    return TokenSpec(.equal)
  }
  
  static var exclamationMark: TokenSpec {
    return TokenSpec(.exclamationMark)
  }
  
  static var extendedRegexDelimiter: TokenSpec {
    return TokenSpec(.extendedRegexDelimiter)
  }
  
  static var floatingLiteral: TokenSpec {
    return TokenSpec(.floatingLiteral)
  }
  
  static var identifier: TokenSpec {
    return TokenSpec(.identifier)
  }
  
  static var infixQuestionMark: TokenSpec {
    return TokenSpec(.infixQuestionMark)
  }
  
  static var integerLiteral: TokenSpec {
    return TokenSpec(.integerLiteral)
  }
  
  static var leftAngle: TokenSpec {
    return TokenSpec(.leftAngle)
  }
  
  static var leftBrace: TokenSpec {
    return TokenSpec(.leftBrace)
  }
  
  static var leftParen: TokenSpec {
    return TokenSpec(.leftParen)
  }
  
  static var leftSquareBracket: TokenSpec {
    return TokenSpec(.leftSquareBracket)
  }
  
  static var multilineStringQuote: TokenSpec {
    return TokenSpec(.multilineStringQuote)
  }
  
  static var period: TokenSpec {
    return TokenSpec(.period)
  }
  
  static var postfixOperator: TokenSpec {
    return TokenSpec(.postfixOperator)
  }
  
  static var postfixQuestionMark: TokenSpec {
    return TokenSpec(.postfixQuestionMark)
  }
  
  static var pound: TokenSpec {
    return TokenSpec(.pound)
  }
  
  static var poundAvailableKeyword: TokenSpec {
    return TokenSpec(.poundAvailableKeyword)
  }
  
  static var poundElseKeyword: TokenSpec {
    return TokenSpec(.poundElseKeyword)
  }
  
  static var poundElseifKeyword: TokenSpec {
    return TokenSpec(.poundElseifKeyword)
  }
  
  static var poundEndifKeyword: TokenSpec {
    return TokenSpec(.poundEndifKeyword)
  }
  
  static var poundIfKeyword: TokenSpec {
    return TokenSpec(.poundIfKeyword)
  }
  
  static var poundSourceLocationKeyword: TokenSpec {
    return TokenSpec(.poundSourceLocationKeyword)
  }
  
  static var poundUnavailableKeyword: TokenSpec {
    return TokenSpec(.poundUnavailableKeyword)
  }
  
  static var prefixAmpersand: TokenSpec {
    return TokenSpec(.prefixAmpersand)
  }
  
  static var prefixOperator: TokenSpec {
    return TokenSpec(.prefixOperator)
  }
  
  static var rawStringDelimiter: TokenSpec {
    return TokenSpec(.rawStringDelimiter)
  }
  
  static var regexLiteralPattern: TokenSpec {
    return TokenSpec(.regexLiteralPattern)
  }
  
  static var regexSlash: TokenSpec {
    return TokenSpec(.regexSlash)
  }
  
  static var rightAngle: TokenSpec {
    return TokenSpec(.rightAngle)
  }
  
  static var rightBrace: TokenSpec {
    return TokenSpec(.rightBrace)
  }
  
  static var rightParen: TokenSpec {
    return TokenSpec(.rightParen)
  }
  
  static var rightSquareBracket: TokenSpec {
    return TokenSpec(.rightSquareBracket)
  }
  
  static var semicolon: TokenSpec {
    return TokenSpec(.semicolon)
  }
  
  static var singleQuote: TokenSpec {
    return TokenSpec(.singleQuote)
  }
  
  static var stringQuote: TokenSpec {
    return TokenSpec(.stringQuote)
  }
  
  static var stringSegment: TokenSpec {
    return TokenSpec(.stringSegment)
  }
  
  static var unknown: TokenSpec {
    return TokenSpec(.unknown)
  }
  
  static var wildcard: TokenSpec {
    return TokenSpec(.wildcard)
  }
  
  static func keyword(_ keyword: Keyword) -> TokenSpec {
    return TokenSpec(keyword)
  }
}
