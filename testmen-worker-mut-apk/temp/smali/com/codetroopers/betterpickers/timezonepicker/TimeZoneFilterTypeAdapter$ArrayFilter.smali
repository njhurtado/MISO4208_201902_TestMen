.class Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "TimeZoneFilterTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;


# direct methods
.method private constructor <init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;
    .param p2, "x1"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$1;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;-><init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)V

    return-void
.end method

.method private handleSearchByGmt(Ljava/util/ArrayList;IZ)V
    .locals 6
    .param p2, "num"    # I
    .param p3, "positiveOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;>;"
    const/4 v5, 0x3

    .line 315
    if-ltz p2, :cond_3

    .line 316
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 317
    const/16 v0, 0x13

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-static {v2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->access$100(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->hasTimeZonesInHrOffset(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    new-instance v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMT+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;-><init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V

    .line 320
    .local v1, "r":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v1    # "r":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 325
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-static {v2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->access$100(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->hasTimeZonesInHrOffset(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    new-instance v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMT+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, p2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;-><init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V

    .line 327
    .restart local v1    # "r":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v1    # "r":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    :cond_2
    mul-int/lit8 p2, p2, -0x1

    .line 332
    :cond_3
    if-nez p3, :cond_6

    if-eqz p2, :cond_6

    .line 333
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-static {v2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->access$100(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->hasTimeZonesInHrOffset(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 334
    new-instance v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, p2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;-><init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V

    .line 335
    .restart local v1    # "r":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v1    # "r":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    :cond_4
    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    .line 339
    const/16 v0, -0xa

    .restart local v0    # "i":I
    :goto_1
    const/16 v2, -0x13

    if-lt v0, v2, :cond_6

    .line 340
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-static {v2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->access$100(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->hasTimeZonesInHrOffset(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 341
    new-instance v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;-><init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V

    .line 342
    .restart local v1    # "r":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v1    # "r":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 347
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method private isStartingInitialsFor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "prefixString"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 283
    .local v3, "initialLen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 285
    .local v4, "strLen":I
    const/4 v1, 0x0

    .line 286
    .local v1, "initialIdx":I
    const/4 v5, 0x1

    .line 287
    .local v5, "wasWordBreak":Z
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "initialIdx":I
    .local v2, "initialIdx":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 288
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 289
    const/4 v5, 0x1

    move v1, v2

    .line 287
    .end local v2    # "initialIdx":I
    .restart local v1    # "initialIdx":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "initialIdx":I
    .restart local v2    # "initialIdx":I
    goto :goto_0

    .line 293
    :cond_0
    if-eqz v5, :cond_5

    .line 294
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "initialIdx":I
    .restart local v1    # "initialIdx":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_1

    .line 308
    :goto_2
    return v6

    .line 297
    :cond_1
    if-ne v1, v3, :cond_2

    move v6, v7

    .line 298
    goto :goto_2

    .line 300
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 305
    .end local v1    # "initialIdx":I
    .restart local v2    # "initialIdx":I
    :cond_3
    const-string v8, "usa"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "united states"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v1, v2

    .end local v2    # "initialIdx":I
    .restart local v1    # "initialIdx":I
    move v6, v7

    .line 306
    goto :goto_2

    .end local v1    # "initialIdx":I
    .restart local v2    # "initialIdx":I
    :cond_4
    move v1, v2

    .line 308
    .end local v2    # "initialIdx":I
    .restart local v1    # "initialIdx":I
    goto :goto_2

    .end local v1    # "initialIdx":I
    .restart local v2    # "initialIdx":I
    :cond_5
    move v1, v2

    .end local v2    # "initialIdx":I
    .restart local v1    # "initialIdx":I
    goto :goto_1
.end method


# virtual methods
.method public parseNum(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    const/16 v7, 0xa

    const/high16 v5, -0x80000000

    .line 355
    move v1, p2

    .line 356
    .local v1, "idx":I
    const/high16 v4, -0x80000000

    .line 357
    .local v4, "num":I
    const/4 v3, 0x1

    .line 360
    .local v3, "negativeMultiplier":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .local v2, "idx":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 361
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 375
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 402
    :cond_0
    :goto_1
    return v5

    .line 363
    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    :pswitch_1
    const/4 v3, -0x1

    .line 366
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_1

    move v1, v2

    .line 368
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    goto :goto_1

    .line 371
    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {v0, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 384
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 385
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 386
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 388
    mul-int/lit8 v6, v4, 0xa

    invoke-static {v0, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int v4, v6, v7

    move v1, v2

    .line 394
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_0

    .line 402
    mul-int v5, v3, v4

    goto :goto_1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    :cond_4
    move v1, v2

    .line 390
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    goto :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 21
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 188
    new-instance v13, Landroid/widget/Filter$FilterResults;

    invoke-direct {v13}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 189
    .local v13, "results":Landroid/widget/Filter$FilterResults;
    const/4 v12, 0x0

    .line 190
    .local v12, "prefixString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 191
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 194
    :cond_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 195
    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v13, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 196
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v13, Landroid/widget/Filter$FilterResults;->count:I

    .line 270
    :goto_0
    return-object v13

    .line 202
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v6, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;>;"
    const/4 v7, 0x0

    .line 208
    .local v7, "gmtOnly":Z
    const/4 v14, 0x0

    .line 209
    .local v14, "startParsePosition":I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x2b

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x2d

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 210
    :cond_2
    const/4 v7, 0x1

    .line 213
    :cond_3
    const-string v16, "gmt"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 214
    const/4 v14, 0x3

    .line 215
    const/4 v7, 0x1

    .line 218
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->parseNum(Ljava/lang/String;I)I

    move-result v10

    .line 219
    .local v10, "num":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    if-eq v10, v0, :cond_5

    .line 220
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v14, :cond_9

    .line 221
    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x2b

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    const/4 v11, 0x1

    .line 222
    .local v11, "positiveOnly":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10, v11}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->handleSearchByGmt(Ljava/util/ArrayList;IZ)V

    .line 228
    .end local v11    # "positiveOnly":Z
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v4, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->access$100(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesByCountry:Ljava/util/LinkedHashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 231
    .local v5, "country":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 232
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, "lowerCaseCountry":Ljava/lang/String;
    const/4 v8, 0x0

    .line 234
    .local v8, "isMatch":Z
    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_7

    const/16 v16, 0x0

    .line 235
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 236
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->isStartingInitialsFor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 237
    :cond_7
    const/4 v8, 0x1

    .line 248
    :cond_8
    :goto_3
    if-eqz v8, :cond_6

    .line 249
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 221
    .end local v4    # "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "country":Ljava/lang/String;
    .end local v8    # "isMatch":Z
    .end local v9    # "lowerCaseCountry":Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    goto :goto_1

    .line 238
    .restart local v4    # "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "country":Ljava/lang/String;
    .restart local v8    # "isMatch":Z
    .restart local v9    # "lowerCaseCountry":Ljava/lang/String;
    :cond_a
    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 241
    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    aget-object v15, v18, v16

    .line 242
    .local v15, "word":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 243
    const/4 v8, 0x1

    .line 244
    goto :goto_3

    .line 241
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 253
    .end local v5    # "country":Ljava/lang/String;
    .end local v8    # "isMatch":Z
    .end local v9    # "lowerCaseCountry":Ljava/lang/String;
    .end local v15    # "word":Ljava/lang/String;
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_d

    .line 255
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 256
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 257
    .restart local v5    # "country":Ljava/lang/String;
    new-instance v17, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;-><init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;ILjava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 268
    .end local v5    # "country":Ljava/lang/String;
    :cond_d
    iput-object v6, v13, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 269
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    iput v0, v13, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 409
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-nez v1, :cond_3

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-static {v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->access$200(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    const/4 v0, 0x0

    .line 417
    .local v0, "filterType":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-static {v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->access$200(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;->onSetFilter(ILjava/lang/String;I)V

    .line 429
    .end local v0    # "filterType":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    iget v2, p2, Landroid/widget/Filter$FilterResults;->count:I

    invoke-static {v1, v2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->access$402(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;I)I

    .line 431
    iget v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v1, :cond_4

    .line 432
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->notifyDataSetChanged()V

    .line 436
    :goto_2
    return-void

    .line 415
    :cond_2
    const/4 v0, -0x1

    .restart local v0    # "filterType":I
    goto :goto_0

    .line 423
    .end local v0    # "filterType":I
    :cond_3
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->access$302(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_1

    .line 434
    :cond_4
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;->this$0:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->notifyDataSetInvalidated()V

    goto :goto_2
.end method
