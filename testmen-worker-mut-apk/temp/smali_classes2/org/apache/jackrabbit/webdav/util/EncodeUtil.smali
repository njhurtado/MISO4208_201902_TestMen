.class public final Lorg/apache/jackrabbit/webdav/util/EncodeUtil;
.super Ljava/lang/Object;
.source "EncodeUtil.java"


# static fields
.field private static URISave:Ljava/util/BitSet;

.field private static URISaveEx:Ljava/util/BitSet;

.field public static final hexTable:[C

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->log:Lorg/slf4j/Logger;

    .line 42
    const-string v1, "0123456789abcdef"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->hexTable:[C

    .line 62
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    .line 64
    const/16 v0, 0x61

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 65
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 68
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 71
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 73
    :cond_2
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 74
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 75
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 76
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 77
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 78
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 79
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 80
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 81
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 83
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    sput-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISaveEx:Ljava/util/BitSet;

    .line 84
    sget-object v1, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISaveEx:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 85
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method private static decodeDigit(B)B
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 209
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 210
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 216
    :goto_0
    return v0

    .line 212
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 213
    add-int/lit8 v0, p0, -0x37

    int-to-byte v0, v0

    goto :goto_0

    .line 215
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 216
    add-int/lit8 v0, p0, -0x57

    int-to-byte v0, v0

    goto :goto_0

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Escape sequence is not hexadecimal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 97
    const/16 v0, 0x25

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->escape(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static escape(Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 11
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "escape"    # C
    .param p2, "isPath"    # Z

    .prologue
    .line 130
    if-eqz p2, :cond_0

    :try_start_0
    sget-object v8, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISaveEx:Ljava/util/BitSet;

    .line 131
    .local v8, "validChars":Ljava/util/BitSet;
    :goto_0
    const-string v9, "utf-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 132
    .local v2, "bytes":[B
    new-instance v7, Ljava/lang/StringBuffer;

    array-length v9, v2

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 133
    .local v7, "out":Ljava/lang/StringBuffer;
    move-object v1, v2

    .local v1, "arr$":[B
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-byte v0, v1, v5

    .line 134
    .local v0, "aByte":B
    and-int/lit16 v3, v0, 0xff

    .line 135
    .local v3, "c":I
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eq v3, p1, :cond_1

    .line 136
    int-to-char v9, v3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "aByte":B
    .end local v1    # "arr$":[B
    .end local v2    # "bytes":[B
    .end local v3    # "c":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "out":Ljava/lang/StringBuffer;
    .end local v8    # "validChars":Ljava/util/BitSet;
    :cond_0
    sget-object v8, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->URISave:Ljava/util/BitSet;

    goto :goto_0

    .line 138
    .restart local v0    # "aByte":B
    .restart local v1    # "arr$":[B
    .restart local v2    # "bytes":[B
    .restart local v3    # "c":I
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "out":Ljava/lang/StringBuffer;
    .restart local v8    # "validChars":Ljava/util/BitSet;
    :cond_1
    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 139
    sget-object v9, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->hexTable:[C

    shr-int/lit8 v10, v3, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    sget-object v9, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->hexTable:[C

    and-int/lit8 v10, v3, 0xf

    aget-char v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 144
    .end local v0    # "aByte":B
    .end local v1    # "arr$":[B
    .end local v2    # "bytes":[B
    .end local v3    # "c":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "out":Ljava/lang/StringBuffer;
    .end local v8    # "validChars":Ljava/util/BitSet;
    :catch_0
    move-exception v4

    .line 145
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Ljava/lang/InternalError;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 143
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "arr$":[B
    .restart local v2    # "bytes":[B
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "out":Ljava/lang/StringBuffer;
    .restart local v8    # "validChars":Ljava/util/BitSet;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    return-object v9
.end method

.method public static escapePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 112
    const/16 v0, 0x25

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->escape(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 163
    const/16 v0, 0x25

    invoke-static {p0, v0}, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->unescape(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unescape(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "escape"    # C

    .prologue
    .line 182
    :try_start_0
    const-string v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 185
    .local v4, "utf8":[B
    array-length v5, v4

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v4, v5

    if-eq v5, p1, :cond_1

    :cond_0
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, v4, v5

    if-ne v5, p1, :cond_2

    .line 187
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Premature end of escape sequence at end of input"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v4    # "utf8":[B
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 190
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "utf8":[B
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v5, v4

    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 191
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 192
    aget-byte v0, v4, v2

    .line 193
    .local v0, "b":B
    if-ne v0, p1, :cond_3

    .line 194
    add-int/lit8 v2, v2, 0x1

    aget-byte v5, v4, v2

    invoke-static {v5}, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->decodeDigit(B)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-byte v6, v4, v2

    invoke-static {v6}, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->decodeDigit(B)B

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 191
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 201
    .end local v0    # "b":B
    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5
.end method
