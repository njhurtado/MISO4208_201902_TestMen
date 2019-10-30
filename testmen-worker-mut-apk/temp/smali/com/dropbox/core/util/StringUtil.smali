.class public Lcom/dropbox/core/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final Base64Digits:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

.field private static final HexDigits:[C

.field public static final UTF8:Ljava/nio/charset/Charset;

.field public static final UrlSafeBase64Digits:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 13
    const-class v0, Lcom/dropbox/core/util/StringUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/core/util/StringUtil;->$assertionsDisabled:Z

    .line 15
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dropbox/core/util/StringUtil;->HexDigits:[C

    .line 140
    sget-boolean v0, Lcom/dropbox/core/util/StringUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_1
    sget-boolean v0, Lcom/dropbox/core/util/StringUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 142
    :cond_2
    return-void

    .line 17
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 146
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0, p0}, Lcom/dropbox/core/util/StringUtil;->base64EncodeGeneric(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static base64EncodeGeneric(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 17
    .param p0, "digits"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 156
    if-nez p1, :cond_0

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "\'data\' can\'t be null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 157
    :cond_0
    if-nez p0, :cond_1

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "\'digits\' can\'t be null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 158
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x40

    if-eq v14, v15, :cond_2

    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\'digits\' must be 64 characters long: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 160
    :cond_2
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, 0x2

    div-int/lit8 v11, v14, 0x3

    .line 161
    .local v11, "numGroupsOfThreeInputBytes":I
    mul-int/lit8 v12, v11, 0x4

    .line 162
    .local v12, "numOutputChars":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    .local v4, "buf":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 166
    .local v9, "i":I
    :goto_0
    add-int/lit8 v14, v9, 0x3

    move-object/from16 v0, p1

    array-length v15, v0

    if-gt v14, v15, :cond_3

    .line 167
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    aget-byte v14, p1, v9

    and-int/lit16 v1, v14, 0xff

    .line 168
    .local v1, "b1":I
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    aget-byte v14, p1, v10

    and-int/lit16 v2, v14, 0xff

    .line 169
    .local v2, "b2":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    aget-byte v14, p1, v9

    and-int/lit16 v3, v14, 0xff

    .line 171
    .local v3, "b3":I
    ushr-int/lit8 v5, v1, 0x2

    .line 172
    .local v5, "d1":I
    and-int/lit8 v14, v1, 0x3

    shl-int/lit8 v14, v14, 0x4

    ushr-int/lit8 v15, v2, 0x4

    or-int v6, v14, v15

    .line 173
    .local v6, "d2":I
    and-int/lit8 v14, v2, 0xf

    shl-int/lit8 v14, v14, 0x2

    ushr-int/lit8 v15, v3, 0x6

    or-int v7, v14, v15

    .line 174
    .local v7, "d3":I
    and-int/lit8 v8, v3, 0x3f

    .line 176
    .local v8, "d4":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v10

    .line 180
    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 183
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    .end local v3    # "b3":I
    .end local v5    # "d1":I
    .end local v6    # "d2":I
    .end local v7    # "d3":I
    .end local v8    # "d4":I
    :cond_3
    move-object/from16 v0, p1

    array-length v14, v0

    sub-int v13, v14, v9

    .line 184
    .local v13, "remaining":I
    if-nez v13, :cond_4

    .line 214
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 187
    :cond_4
    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 188
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    aget-byte v14, p1, v9

    and-int/lit16 v1, v14, 0xff

    .line 190
    .restart local v1    # "b1":I
    ushr-int/lit8 v5, v1, 0x2

    .line 191
    .restart local v5    # "d1":I
    and-int/lit8 v14, v1, 0x3

    shl-int/lit8 v6, v14, 0x4

    .line 193
    .restart local v6    # "d2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    const-string v14, "=="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v10

    .line 196
    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_1

    .line 197
    .end local v1    # "b1":I
    .end local v5    # "d1":I
    .end local v6    # "d2":I
    :cond_5
    const/4 v14, 0x2

    if-ne v13, v14, :cond_6

    .line 198
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    aget-byte v14, p1, v9

    and-int/lit16 v1, v14, 0xff

    .line 199
    .restart local v1    # "b1":I
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    aget-byte v14, p1, v10

    and-int/lit16 v2, v14, 0xff

    .line 201
    .restart local v2    # "b2":I
    ushr-int/lit8 v5, v1, 0x2

    .line 202
    .restart local v5    # "d1":I
    and-int/lit8 v14, v1, 0x3

    shl-int/lit8 v14, v14, 0x4

    ushr-int/lit8 v15, v2, 0x4

    or-int v6, v14, v15

    .line 203
    .restart local v6    # "d2":I
    and-int/lit8 v14, v2, 0xf

    shl-int/lit8 v7, v14, 0x2

    .line 205
    .restart local v7    # "d3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    const/16 v14, 0x3d

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 211
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    .end local v5    # "d1":I
    .end local v6    # "d2":I
    .end local v7    # "d3":I
    :cond_6
    new-instance v14, Ljava/lang/AssertionError;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "data.length: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", i: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14
.end method

.method public static binaryToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 91
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/dropbox/core/util/StringUtil;->binaryToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static binaryToHex([BII)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 101
    sget-boolean v6, Lcom/dropbox/core/util/StringUtil;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    array-length v6, p0

    if-ge p1, v6, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 102
    :cond_1
    add-int v2, p1, p2

    .line 103
    .local v2, "end":I
    sget-boolean v6, Lcom/dropbox/core/util/StringUtil;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    array-length v6, p0

    if-gt v2, v6, :cond_2

    if-gez v2, :cond_3

    :cond_2
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 105
    :cond_3
    mul-int/lit8 v6, p2, 0x2

    new-array v1, v6, [C

    .line 106
    .local v1, "chars":[C
    const/4 v4, 0x0

    .line 107
    .local v4, "j":I
    move v3, p1

    .local v3, "i":I
    move v5, v4

    .end local v4    # "j":I
    .local v5, "j":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 108
    aget-byte v0, p0, v3

    .line 109
    .local v0, "b":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-static {v6}, Lcom/dropbox/core/util/StringUtil;->hexDigit(I)C

    move-result v6

    aput-char v6, v1, v5

    .line 110
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .restart local v5    # "j":I
    and-int/lit8 v6, v0, 0xf

    invoke-static {v6}, Lcom/dropbox/core/util/StringUtil;->hexDigit(I)C

    move-result v6

    aput-char v6, v1, v4

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "b":I
    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method public static hexDigit(I)C
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/util/StringUtil;->HexDigits:[C

    aget-char v0, v0, p0

    return v0
.end method

.method public static javaQuotedLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x22

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 57
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 58
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 66
    const/16 v7, 0x20

    if-lt v1, v7, :cond_0

    const/16 v7, 0x7e

    if-gt v1, v7, :cond_0

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 59
    :sswitch_0
    const-string v7, "\\\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 60
    :sswitch_1
    const-string v7, "\\\\"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 61
    :sswitch_2
    const-string v7, "\\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 62
    :sswitch_3
    const-string v7, "\\t"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 63
    :sswitch_4
    const-string v7, "\\r"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 64
    :sswitch_5
    const-string v7, "\\000"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 69
    :cond_0
    shr-int/lit8 v7, v1, 0xc

    and-int/lit8 v2, v7, 0xf

    .line 70
    .local v2, "h1":I
    shr-int/lit8 v7, v1, 0x8

    and-int/lit8 v3, v7, 0xf

    .line 71
    .local v3, "h2":I
    shr-int/lit8 v7, v1, 0x4

    and-int/lit8 v4, v7, 0xf

    .line 72
    .local v4, "h3":I
    and-int/lit8 v5, v1, 0xf

    .line 73
    .local v5, "h4":I
    const-string v7, "\\u"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v2}, Lcom/dropbox/core/util/StringUtil;->hexDigit(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {v3}, Lcom/dropbox/core/util/StringUtil;->hexDigit(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {v4}, Lcom/dropbox/core/util/StringUtil;->hexDigit(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {v5}, Lcom/dropbox/core/util/StringUtil;->hexDigit(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 82
    .end local v1    # "c":C
    .end local v2    # "h1":I
    .end local v3    # "h2":I
    .end local v4    # "h3":I
    .end local v5    # "h4":I
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_2
        0xd -> :sswitch_3
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public static jq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/dropbox/core/util/StringUtil;->javaQuotedLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static secureStringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v4

    .line 128
    :cond_1
    const/4 v3, 0x0

    .line 129
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 130
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 131
    .local v0, "ca":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 132
    .local v1, "cb":C
    xor-int v5, v0, v1

    or-int/2addr v3, v5

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    :cond_2
    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static stringToUtf8(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, "UTF-8 should always be supported"

    invoke-static {v1, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static urlSafeBase64Encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 151
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0, p0}, Lcom/dropbox/core/util/StringUtil;->base64EncodeGeneric(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static utf8ToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "utf8Data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/dropbox/core/util/StringUtil;->utf8ToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static utf8ToString([BII)Ljava/lang/String;
    .locals 3
    .param p0, "utf8Data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 31
    sget-object v2, Lcom/dropbox/core/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 32
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 33
    .local v1, "result":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
