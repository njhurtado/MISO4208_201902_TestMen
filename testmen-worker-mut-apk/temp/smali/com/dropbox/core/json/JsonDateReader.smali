.class public Lcom/dropbox/core/json/JsonDateReader;
.super Ljava/lang/Object;
.source "JsonDateReader.java"


# static fields
.field public static final Dropbox:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final DropboxV2:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/dropbox/core/json/JsonDateReader$1;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonDateReader$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonDateReader;->Dropbox:Lcom/dropbox/core/json/JsonReader;

    .line 150
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/json/JsonDateReader;->UTC:Ljava/util/TimeZone;

    .line 232
    new-instance v0, Lcom/dropbox/core/json/JsonDateReader$2;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonDateReader$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonDateReader;->DropboxV2:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMonthIndex(CCC)I
    .locals 5
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "c"    # C

    .prologue
    const/16 v4, 0x61

    const/16 v3, 0x65

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 185
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 187
    :pswitch_1
    if-ne p1, v4, :cond_1

    move v3, v2

    :goto_1
    const/16 v4, 0x6e

    if-ne p2, v4, :cond_2

    :goto_2
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 188
    const/16 v0, 0x75

    if-ne p1, v0, :cond_5

    .line 189
    const/16 v0, 0x6e

    if-ne p2, v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    move v3, v0

    .line 187
    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_2

    .line 190
    :cond_3
    const/16 v0, 0x6c

    if-ne p2, v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    move v0, v1

    .line 191
    goto :goto_0

    :cond_5
    move v0, v1

    .line 193
    goto :goto_0

    .line 195
    :pswitch_2
    if-ne p1, v3, :cond_6

    move v3, v2

    :goto_3
    const/16 v1, 0x62

    if-ne p2, v1, :cond_7

    move v1, v2

    :goto_4
    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_6
    move v3, v0

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_4

    .line 198
    :pswitch_3
    if-ne p1, v4, :cond_a

    .line 199
    const/16 v0, 0x72

    if-ne p2, v0, :cond_8

    const/4 v0, 0x2

    goto :goto_0

    .line 200
    :cond_8
    const/16 v0, 0x79

    if-ne p2, v0, :cond_9

    const/4 v0, 0x4

    goto :goto_0

    :cond_9
    move v0, v1

    .line 201
    goto :goto_0

    :cond_a
    move v0, v1

    .line 203
    goto :goto_0

    .line 205
    :pswitch_4
    const/16 v3, 0x70

    if-ne p1, v3, :cond_b

    move v4, v2

    :goto_5
    const/16 v3, 0x72

    if-ne p2, v3, :cond_c

    move v3, v2

    :goto_6
    and-int/2addr v3, v4

    if-eqz v3, :cond_d

    const/4 v0, 0x3

    goto :goto_0

    :cond_b
    move v4, v0

    goto :goto_5

    :cond_c
    move v3, v0

    goto :goto_6

    .line 206
    :cond_d
    const/16 v3, 0x75

    if-ne p1, v3, :cond_e

    move v3, v2

    :goto_7
    const/16 v4, 0x67

    if-ne p2, v4, :cond_f

    :goto_8
    and-int v0, v3, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x7

    goto :goto_0

    :cond_e
    move v3, v0

    goto :goto_7

    :cond_f
    move v2, v0

    goto :goto_8

    :cond_10
    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :pswitch_5
    if-ne p1, v3, :cond_11

    move v3, v2

    :goto_9
    const/16 v4, 0x70

    if-ne p2, v4, :cond_12

    :goto_a
    and-int v0, v3, v2

    if-eqz v0, :cond_13

    const/16 v0, 0x8

    goto :goto_0

    :cond_11
    move v3, v0

    goto :goto_9

    :cond_12
    move v2, v0

    goto :goto_a

    :cond_13
    move v0, v1

    .line 210
    goto/16 :goto_0

    .line 212
    :pswitch_6
    const/16 v3, 0x63

    if-ne p1, v3, :cond_14

    move v3, v2

    :goto_b
    const/16 v4, 0x74

    if-ne p2, v4, :cond_15

    :goto_c
    and-int v0, v3, v2

    if-eqz v0, :cond_16

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_14
    move v3, v0

    goto :goto_b

    :cond_15
    move v2, v0

    goto :goto_c

    :cond_16
    move v0, v1

    .line 213
    goto/16 :goto_0

    .line 215
    :pswitch_7
    const/16 v3, 0x6f

    if-ne p1, v3, :cond_17

    move v3, v2

    :goto_d
    const/16 v4, 0x76

    if-ne p2, v4, :cond_18

    :goto_e
    and-int v0, v3, v2

    if-eqz v0, :cond_19

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_17
    move v3, v0

    goto :goto_d

    :cond_18
    move v2, v0

    goto :goto_e

    :cond_19
    move v0, v1

    .line 216
    goto/16 :goto_0

    .line 218
    :pswitch_8
    if-ne p1, v3, :cond_1a

    move v3, v2

    :goto_f
    const/16 v4, 0x63

    if-ne p2, v4, :cond_1b

    :goto_10
    and-int v0, v3, v2

    if-eqz v0, :cond_1c

    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_1a
    move v3, v0

    goto :goto_f

    :cond_1b
    move v2, v0

    goto :goto_10

    :cond_1c
    move v0, v1

    .line 219
    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 154
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDayOfWeek(CCC)Z
    .locals 6
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "c"    # C

    .prologue
    const/16 v5, 0x6e

    const/16 v2, 0x65

    const/16 v4, 0x75

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 160
    sparse-switch p0, :sswitch_data_0

    move v0, v1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 162
    :sswitch_0
    if-ne p1, v4, :cond_1

    move v3, v0

    :goto_1
    if-ne p2, v5, :cond_2

    move v2, v0

    :goto_2
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 163
    const/16 v2, 0x61

    if-ne p1, v2, :cond_3

    move v3, v0

    :goto_3
    const/16 v2, 0x74

    if-ne p2, v2, :cond_4

    move v2, v0

    :goto_4
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    .line 164
    goto :goto_0

    :cond_1
    move v3, v1

    .line 162
    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v3, v1

    .line 163
    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_4

    .line 166
    :sswitch_1
    const/16 v2, 0x6f

    if-ne p1, v2, :cond_5

    move v3, v0

    :goto_5
    if-ne p2, v5, :cond_6

    move v2, v0

    :goto_6
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    .line 167
    goto :goto_0

    :cond_5
    move v3, v1

    .line 166
    goto :goto_5

    :cond_6
    move v2, v1

    goto :goto_6

    .line 169
    :sswitch_2
    if-ne p1, v4, :cond_7

    move v3, v0

    :goto_7
    if-ne p2, v2, :cond_8

    move v2, v0

    :goto_8
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 170
    const/16 v2, 0x68

    if-ne p1, v2, :cond_9

    move v3, v0

    :goto_9
    if-ne p2, v4, :cond_a

    move v2, v0

    :goto_a
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    .line 171
    goto :goto_0

    :cond_7
    move v3, v1

    .line 169
    goto :goto_7

    :cond_8
    move v2, v1

    goto :goto_8

    :cond_9
    move v3, v1

    .line 170
    goto :goto_9

    :cond_a
    move v2, v1

    goto :goto_a

    .line 173
    :sswitch_3
    if-ne p1, v2, :cond_b

    move v3, v0

    :goto_b
    const/16 v2, 0x64

    if-ne p2, v2, :cond_c

    move v2, v0

    :goto_c
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    .line 174
    goto :goto_0

    :cond_b
    move v3, v1

    .line 173
    goto :goto_b

    :cond_c
    move v2, v1

    goto :goto_c

    .line 176
    :sswitch_4
    const/16 v2, 0x72

    if-ne p1, v2, :cond_d

    move v3, v0

    :goto_d
    const/16 v2, 0x69

    if-ne p2, v2, :cond_e

    move v2, v0

    :goto_e
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    .line 177
    goto :goto_0

    :cond_d
    move v3, v1

    .line 176
    goto :goto_d

    :cond_e
    move v2, v1

    goto :goto_e

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_4
        0x4d -> :sswitch_1
        0x53 -> :sswitch_0
        0x54 -> :sswitch_2
        0x57 -> :sswitch_3
    .end sparse-switch
.end method

.method public static parseDropbox8601Date([CII)Ljava/util/Date;
    .locals 10
    .param p0, "buffer"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x14

    const/4 v9, 0x0

    .line 257
    move v3, p1

    .line 258
    .local v3, "i":I
    move-object v0, p0

    .line 260
    .local v0, "b":[C
    if-eq p2, v7, :cond_0

    const/16 v6, 0x18

    if-eq p2, v6, :cond_0

    .line 261
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expecting date to be 20 or 24 characters, got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 266
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v3, p2}, Ljava/lang/String;-><init>([CII)V

    .line 268
    .local v5, "s":Ljava/lang/String;
    if-ne p2, v7, :cond_1

    .line 271
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, "format":Ljava/text/DateFormat;
    :goto_0
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 281
    :try_start_0
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 286
    .local v4, "result":Ljava/util/Date;
    if-nez v4, :cond_2

    .line 287
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid date"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 275
    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v4    # "result":Ljava/util/Date;
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v2    # "format":Ljava/text/DateFormat;
    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid characters in date"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 290
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "result":Ljava/util/Date;
    :cond_2
    return-object v4
.end method

.method public static parseDropboxDate([CII)Ljava/util/Date;
    .locals 26
    .param p0, "buffer"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 44
    move/from16 v14, p1

    .line 45
    .local v14, "i":I
    move-object/from16 v9, p0

    .line 47
    .local v9, "b":[C
    const/16 v23, 0x1f

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 48
    new-instance v23, Ljava/text/ParseException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "expecting date to be 31 characters, got "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 52
    :cond_0
    array-length v0, v9

    move/from16 v23, v0

    add-int/lit8 v24, v14, 0x1f

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1

    if-gez v14, :cond_2

    .line 53
    :cond_1
    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string v24, "range is not within \'b\'"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 62
    :cond_2
    add-int/lit8 v23, v14, 0x3

    aget-char v23, v9, v23

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    const/16 v23, 0x1

    :goto_0
    add-int/lit8 v24, v14, 0x4

    aget-char v24, v9, v24

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    const/16 v24, 0x1

    :goto_1
    or-int v24, v24, v23

    add-int/lit8 v23, v14, 0x7

    aget-char v23, v9, v23

    const/16 v25, 0x20

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    const/16 v23, 0x1

    :goto_2
    or-int v24, v24, v23

    add-int/lit8 v23, v14, 0xb

    aget-char v23, v9, v23

    const/16 v25, 0x20

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    const/16 v23, 0x1

    :goto_3
    or-int v24, v24, v23

    add-int/lit8 v23, v14, 0x10

    aget-char v23, v9, v23

    const/16 v25, 0x20

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    const/16 v23, 0x1

    :goto_4
    or-int v24, v24, v23

    add-int/lit8 v23, v14, 0x13

    aget-char v23, v9, v23

    const/16 v25, 0x3a

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    const/16 v23, 0x1

    :goto_5
    or-int v24, v24, v23

    add-int/lit8 v23, v14, 0x16

    aget-char v23, v9, v23

    const/16 v25, 0x3a

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    const/16 v23, 0x1

    :goto_6
    or-int v24, v24, v23

    add-int/lit8 v23, v14, 0x19

    aget-char v23, v9, v23

    const/16 v25, 0x20

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    const/16 v23, 0x1

    :goto_7
    or-int v24, v24, v23

    add-int/lit8 v23, v14, 0x1a

    aget-char v23, v9, v23

    const/16 v25, 0x2b

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_b

    const/16 v23, 0x1

    :goto_8
    or-int v24, v24, v23

    add-int/lit8 v23, v14, 0x1b

    aget-char v23, v9, v23

    const/16 v25, 0x30

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/16 v23, 0x1

    :goto_9
    or-int v24, v24, v23

    add-int/lit8 v23, v14, 0x1c

    aget-char v23, v9, v23

    const/16 v25, 0x30

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    const/16 v23, 0x1

    :goto_a
    or-int v24, v24, v23

    add-int/lit8 v23, v14, 0x1d

    aget-char v23, v9, v23

    const/16 v25, 0x30

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    const/16 v23, 0x1

    :goto_b
    or-int v24, v24, v23

    add-int/lit8 v23, v14, 0x1e

    aget-char v23, v9, v23

    const/16 v25, 0x30

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    const/16 v23, 0x1

    :goto_c
    or-int v23, v23, v24

    if-eqz v23, :cond_1d

    .line 65
    add-int/lit8 v23, v14, 0x3

    aget-char v23, v9, v23

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \',\'"

    const/16 v25, 0x3

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 62
    :cond_3
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_2

    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_3

    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_4

    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_5

    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_6

    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v23, 0x0

    goto :goto_8

    :cond_c
    const/16 v23, 0x0

    goto :goto_9

    :cond_d
    const/16 v23, 0x0

    goto :goto_a

    :cond_e
    const/16 v23, 0x0

    goto :goto_b

    :cond_f
    const/16 v23, 0x0

    goto :goto_c

    .line 66
    :cond_10
    add-int/lit8 v23, v14, 0x4

    aget-char v23, v9, v23

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \' \'"

    const/16 v25, 0x4

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 67
    :cond_11
    add-int/lit8 v23, v14, 0x7

    aget-char v23, v9, v23

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \' \'"

    const/16 v25, 0x7

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 68
    :cond_12
    add-int/lit8 v23, v14, 0xb

    aget-char v23, v9, v23

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_13

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \' \'"

    const/16 v25, 0xb

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 69
    :cond_13
    add-int/lit8 v23, v14, 0x10

    aget-char v23, v9, v23

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_14

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \' \'"

    const/16 v25, 0x10

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 70
    :cond_14
    add-int/lit8 v23, v14, 0x13

    aget-char v23, v9, v23

    const/16 v24, 0x3a

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_15

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \':\'"

    const/16 v25, 0x13

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 71
    :cond_15
    add-int/lit8 v23, v14, 0x16

    aget-char v23, v9, v23

    const/16 v24, 0x3a

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_16

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \':\'"

    const/16 v25, 0x16

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 72
    :cond_16
    add-int/lit8 v23, v14, 0x19

    aget-char v23, v9, v23

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_17

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \' \'"

    const/16 v25, 0x19

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 73
    :cond_17
    add-int/lit8 v23, v14, 0x1a

    aget-char v23, v9, v23

    const/16 v24, 0x2b

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_18

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \'+\'"

    const/16 v25, 0x1a

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 74
    :cond_18
    add-int/lit8 v23, v14, 0x1b

    aget-char v23, v9, v23

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \'0\'"

    const/16 v25, 0x1b

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 75
    :cond_19
    add-int/lit8 v23, v14, 0x1c

    aget-char v23, v9, v23

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1a

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \'0\'"

    const/16 v25, 0x1c

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 76
    :cond_1a
    add-int/lit8 v23, v14, 0x1d

    aget-char v23, v9, v23

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1b

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \'0\'"

    const/16 v25, 0x1d

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 77
    :cond_1b
    add-int/lit8 v23, v14, 0x1e

    aget-char v23, v9, v23

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    new-instance v23, Ljava/text/ParseException;

    const-string v24, "expecting \'0\'"

    const/16 v25, 0x1e

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 78
    :cond_1c
    new-instance v23, Ljava/lang/AssertionError;

    const-string v24, "unreachable"

    invoke-direct/range {v23 .. v24}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v23

    .line 82
    :cond_1d
    aget-char v23, v9, v14

    add-int/lit8 v24, v14, 0x1

    aget-char v24, v9, v24

    add-int/lit8 v25, v14, 0x2

    aget-char v25, v9, v25

    invoke-static/range {v23 .. v25}, Lcom/dropbox/core/json/JsonDateReader;->isValidDayOfWeek(CCC)Z

    move-result v23

    if-nez v23, :cond_1e

    .line 83
    new-instance v23, Ljava/text/ParseException;

    const-string v24, "invalid day of week"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 87
    :cond_1e
    add-int/lit8 v23, v14, 0x8

    aget-char v23, v9, v23

    add-int/lit8 v24, v14, 0x9

    aget-char v24, v9, v24

    add-int/lit8 v25, v14, 0xa

    aget-char v25, v9, v25

    invoke-static/range {v23 .. v25}, Lcom/dropbox/core/json/JsonDateReader;->getMonthIndex(CCC)I

    move-result v4

    .line 88
    .local v4, "month":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v4, v0, :cond_1f

    .line 89
    new-instance v23, Ljava/text/ParseException;

    const-string v24, "invalid month"

    const/16 v25, 0x8

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 93
    :cond_1f
    add-int/lit8 v23, v14, 0x5

    aget-char v10, v9, v23

    .line 94
    .local v10, "d1":C
    add-int/lit8 v23, v14, 0x6

    aget-char v11, v9, v23

    .line 96
    .local v11, "d2":C
    invoke-static {v10}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v23

    if-eqz v23, :cond_20

    invoke-static {v11}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v23

    if-nez v23, :cond_21

    .line 97
    :cond_20
    new-instance v23, Ljava/text/ParseException;

    const-string v24, "invalid day of month"

    const/16 v25, 0x5

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 100
    :cond_21
    mul-int/lit8 v23, v10, 0xa

    add-int v23, v23, v11

    move/from16 v0, v23

    add-int/lit16 v5, v0, -0x210

    .line 103
    .local v5, "dayOfMonth":I
    add-int/lit8 v23, v14, 0xc

    aget-char v19, v9, v23

    .line 104
    .local v19, "y1":C
    add-int/lit8 v23, v14, 0xd

    aget-char v20, v9, v23

    .line 105
    .local v20, "y2":C
    add-int/lit8 v23, v14, 0xe

    aget-char v21, v9, v23

    .line 106
    .local v21, "y3":C
    add-int/lit8 v23, v14, 0xf

    aget-char v22, v9, v23

    .line 108
    .local v22, "y4":C
    invoke-static/range {v19 .. v19}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v23

    if-nez v23, :cond_22

    const/16 v23, 0x1

    :goto_d
    invoke-static/range {v20 .. v20}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v24

    if-nez v24, :cond_23

    const/16 v24, 0x1

    :goto_e
    or-int v24, v24, v23

    invoke-static/range {v21 .. v21}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v23

    if-nez v23, :cond_24

    const/16 v23, 0x1

    :goto_f
    or-int v24, v24, v23

    invoke-static/range {v22 .. v22}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v23

    if-nez v23, :cond_25

    const/16 v23, 0x1

    :goto_10
    or-int v23, v23, v24

    if-eqz v23, :cond_26

    .line 109
    new-instance v23, Ljava/text/ParseException;

    const-string v24, "invalid year"

    const/16 v25, 0xc

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 108
    :cond_22
    const/16 v23, 0x0

    goto :goto_d

    :cond_23
    const/16 v24, 0x0

    goto :goto_e

    :cond_24
    const/16 v23, 0x0

    goto :goto_f

    :cond_25
    const/16 v23, 0x0

    goto :goto_10

    .line 112
    :cond_26
    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    mul-int/lit8 v24, v20, 0x64

    add-int v23, v23, v24

    mul-int/lit8 v24, v21, 0xa

    add-int v23, v23, v24

    add-int v23, v23, v22

    const v24, 0xd050

    sub-int v3, v23, v24

    .line 115
    .local v3, "year":I
    add-int/lit8 v23, v14, 0x11

    aget-char v12, v9, v23

    .line 116
    .local v12, "h1":C
    add-int/lit8 v23, v14, 0x12

    aget-char v13, v9, v23

    .line 118
    .local v13, "h2":C
    invoke-static {v12}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v23

    if-nez v23, :cond_27

    const/16 v23, 0x1

    :goto_11
    invoke-static {v13}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v24

    if-nez v24, :cond_28

    const/16 v24, 0x1

    :goto_12
    or-int v23, v23, v24

    if-eqz v23, :cond_29

    .line 119
    new-instance v23, Ljava/text/ParseException;

    const-string v24, "invalid hour"

    const/16 v25, 0x11

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 118
    :cond_27
    const/16 v23, 0x0

    goto :goto_11

    :cond_28
    const/16 v24, 0x0

    goto :goto_12

    .line 122
    :cond_29
    mul-int/lit8 v23, v12, 0xa

    add-int v23, v23, v13

    move/from16 v0, v23

    add-int/lit16 v6, v0, -0x210

    .line 125
    .local v6, "hour":I
    add-int/lit8 v23, v14, 0x14

    aget-char v15, v9, v23

    .line 126
    .local v15, "m1":C
    add-int/lit8 v23, v14, 0x15

    aget-char v16, v9, v23

    .line 128
    .local v16, "m2":C
    invoke-static {v15}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v23

    if-nez v23, :cond_2a

    const/16 v23, 0x1

    :goto_13
    invoke-static/range {v16 .. v16}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v24

    if-nez v24, :cond_2b

    const/16 v24, 0x1

    :goto_14
    or-int v23, v23, v24

    if-eqz v23, :cond_2c

    .line 129
    new-instance v23, Ljava/text/ParseException;

    const-string v24, "invalid minute"

    const/16 v25, 0x14

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 128
    :cond_2a
    const/16 v23, 0x0

    goto :goto_13

    :cond_2b
    const/16 v24, 0x0

    goto :goto_14

    .line 132
    :cond_2c
    mul-int/lit8 v23, v15, 0xa

    add-int v23, v23, v16

    move/from16 v0, v23

    add-int/lit16 v7, v0, -0x210

    .line 135
    .local v7, "minute":I
    add-int/lit8 v23, v14, 0x17

    aget-char v17, v9, v23

    .line 136
    .local v17, "s1":C
    add-int/lit8 v23, v14, 0x18

    aget-char v18, v9, v23

    .line 138
    .local v18, "s2":C
    invoke-static/range {v17 .. v17}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v23

    if-nez v23, :cond_2d

    const/16 v23, 0x1

    :goto_15
    invoke-static/range {v18 .. v18}, Lcom/dropbox/core/json/JsonDateReader;->isDigit(C)Z

    move-result v24

    if-nez v24, :cond_2e

    const/16 v24, 0x1

    :goto_16
    or-int v23, v23, v24

    if-eqz v23, :cond_2f

    .line 139
    new-instance v23, Ljava/text/ParseException;

    const-string v24, "invalid second"

    const/16 v25, 0x17

    invoke-direct/range {v23 .. v25}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    .line 138
    :cond_2d
    const/16 v23, 0x0

    goto :goto_15

    :cond_2e
    const/16 v24, 0x0

    goto :goto_16

    .line 142
    :cond_2f
    mul-int/lit8 v23, v17, 0xa

    add-int v23, v23, v18

    move/from16 v0, v23

    add-int/lit16 v8, v0, -0x210

    .line 145
    .local v8, "second":I
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct/range {v2 .. v8}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 146
    .local v2, "c":Ljava/util/GregorianCalendar;
    sget-object v23, Lcom/dropbox/core/json/JsonDateReader;->UTC:Ljava/util/TimeZone;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 147
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v23

    return-object v23
.end method
