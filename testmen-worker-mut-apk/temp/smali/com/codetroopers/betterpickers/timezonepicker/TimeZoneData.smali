.class public Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;
.super Ljava/lang/Object;
.source "TimeZoneData.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final OFFSET_ARRAY_OFFSET:I = 0x14

.field private static final PALESTINE_COUNTRY_CODE:Ljava/lang/String; = "PS"

.field private static final TAG:Ljava/lang/String; = "TimeZoneData"

.field public static is24HourFormat:Z

.field private static mBackupCountryCodes:[Ljava/lang/String;

.field private static mBackupCountryLocale:Ljava/util/Locale;

.field private static mBackupCountryNames:[Ljava/lang/String;


# instance fields
.field private mAlternateDefaultTimeZoneId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountryCodeToNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultTimeZoneCountry:Ljava/lang/String;

.field public mDefaultTimeZoneId:Ljava/lang/String;

.field private mDefaultTimeZoneInfo:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

.field private mHasTimeZonesInHrOffset:[Z

.field private mPalestineDisplayName:Ljava/lang/String;

.field private mTimeMillis:J

.field mTimeZoneNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTimeZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTimeZonesByCountry:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimeZonesById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTimeZonesByOffsets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultTimeZoneId"    # Ljava/lang/String;
    .param p3, "timeMillis"    # J

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZoneNames:Ljava/util/HashSet;

    .line 55
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mCountryCodeToNameMap:Ljava/util/HashMap;

    .line 63
    const/16 v2, 0x28

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    .line 69
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->is24HourFormat:Z

    sput-boolean v2, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->is24HourFormat:Z

    .line 71
    iput-object p2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mAlternateDefaultTimeZoneId:Ljava/lang/String;

    iput-object p2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    .local v0, "now":J
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 75
    iput-wide v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeMillis:J

    .line 80
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$string;->palestine_display_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mPalestineDisplayName:Ljava/lang/String;

    .line 82
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->loadTzs(Landroid/content/Context;)V

    .line 84
    const-string v2, "TimeZoneData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time to load time zones (ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 77
    :cond_0
    iput-wide p3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeMillis:J

    goto :goto_0
.end method

.method private getCountryNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 485
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 487
    .local v1, "defaultLocale":Ljava/util/Locale;
    const-string v4, "PS"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mPalestineDisplayName:Ljava/lang/String;

    .line 493
    .local v0, "countryDisplayName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 513
    .end local v0    # "countryDisplayName":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 490
    :cond_0
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "countryDisplayName":Ljava/lang/String;
    goto :goto_0

    .line 497
    :cond_1
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mBackupCountryCodes:[Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mBackupCountryLocale:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 498
    :cond_2
    sput-object v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mBackupCountryLocale:Ljava/util/Locale;

    .line 499
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/codetroopers/betterpickers/R$array;->backup_country_codes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mBackupCountryCodes:[Ljava/lang/String;

    .line 501
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/codetroopers/betterpickers/R$array;->backup_country_names:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mBackupCountryNames:[Ljava/lang/String;

    .line 505
    :cond_3
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mBackupCountryCodes:[Ljava/lang/String;

    array-length v4, v4

    sget-object v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mBackupCountryNames:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 507
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 508
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mBackupCountryCodes:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 509
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mBackupCountryNames:[Ljava/lang/String;

    aget-object v0, v4, v2

    goto :goto_1

    .line 507
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move-object v0, p2

    .line 513
    goto :goto_1
.end method

.method private getIdenticalTimeZoneInTheCountry(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)I
    .locals 5
    .param p1, "timeZoneInfo"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "idx":I
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .line 519
    .local v1, "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    invoke-virtual {v1, p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->hasSameRules(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    iget-object v3, v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 521
    iget-object v3, p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 530
    .end local v0    # "idx":I
    .end local v1    # "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :cond_0
    :goto_1
    return v0

    .line 524
    .restart local v0    # "idx":I
    .restart local v1    # "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :cond_1
    iget-object v3, v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    iget-object v4, p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 528
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 529
    goto :goto_0

    .line 530
    .end local v1    # "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private indexByOffsets(ILcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)V
    .locals 8
    .param p1, "idx"    # I
    .param p2, "tzi"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .prologue
    .line 296
    invoke-virtual {p2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->getNowOffsetMillis()I

    move-result v2

    .line 297
    .local v2, "offsetMillis":I
    int-to-long v4, v2

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    long-to-int v3, v4

    add-int/lit8 v1, v3, 0x14

    .line 298
    .local v1, "index":I
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    .line 300
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesByOffsets:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 301
    .local v0, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .restart local v0    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesByOffsets:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method private loadTzsInZoneTab(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 318
    .local v15, "processedTimeZones":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 319
    .local v3, "am":Landroid/content/res/AssetManager;
    const/4 v10, 0x0

    .line 326
    .local v10, "is":Ljava/io/InputStream;
    :try_start_0
    const-string v21, "backward"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 327
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 330
    .local v16, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 332
    const-string v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_0

    .line 336
    const-string v21, "\t+"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, "fields":[Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v13, v8, v21

    .line 338
    .local v13, "newTzId":Ljava/lang/String;
    array-length v0, v8

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v14, v8, v21

    .line 340
    .local v14, "oldTzId":Ljava/lang/String;
    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v19

    .line 341
    .local v19, "tz":Ljava/util/TimeZone;
    if-nez v19, :cond_4

    .line 342
    const-string v21, "TimeZoneData"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Timezone not found: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 358
    .end local v8    # "fields":[Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "newTzId":Ljava/lang/String;
    .end local v14    # "oldTzId":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v19    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v7

    .line 359
    .local v7, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v21, "TimeZoneData"

    const-string v22, "Failed to read \'backward\' file."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    if-eqz v10, :cond_1

    .line 363
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 376
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_1
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 377
    .local v11, "lang":Ljava/lang/String;
    const-string v21, "zone.tab"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 378
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 380
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "line":Ljava/lang/String;
    if-eqz v12, :cond_e

    .line 381
    const-string v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 386
    const-string v21, "\t"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 387
    .restart local v8    # "fields":[Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v17, v8, v21

    .line 388
    .local v17, "timeZoneId":Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v5, v8, v21

    .line 389
    .local v5, "countryCode":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v19

    .line 390
    .restart local v19    # "tz":Ljava/util/TimeZone;
    if-nez v19, :cond_7

    .line 391
    const-string v21, "TimeZoneData"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Timezone not found: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 466
    .end local v5    # "countryCode":Ljava/lang/String;
    .end local v8    # "fields":[Ljava/lang/String;
    .end local v11    # "lang":Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "timeZoneId":Ljava/lang/String;
    .end local v19    # "tz":Ljava/util/TimeZone;
    :catch_1
    move-exception v7

    .line 467
    .restart local v7    # "ex":Ljava/io/IOException;
    :try_start_4
    const-string v21, "TimeZoneData"

    const-string v22, "Failed to read \'zone.tab\'."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 470
    if-eqz v10, :cond_3

    .line 471
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 477
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_3
    :goto_3
    return-object v15

    .line 346
    .restart local v8    # "fields":[Ljava/lang/String;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "newTzId":Ljava/lang/String;
    .restart local v14    # "oldTzId":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "tz":Ljava/util/TimeZone;
    :cond_4
    :try_start_6
    invoke-virtual {v15, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 354
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mAlternateDefaultTimeZoneId:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 361
    .end local v8    # "fields":[Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "newTzId":Ljava/lang/String;
    .end local v14    # "oldTzId":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v19    # "tz":Ljava/util/TimeZone;
    :catchall_0
    move-exception v21

    .line 362
    if-eqz v10, :cond_5

    .line 363
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 366
    :cond_5
    :goto_4
    throw v21

    .line 362
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :cond_6
    if-eqz v10, :cond_1

    .line 363
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 365
    :catch_2
    move-exception v21

    goto/16 :goto_1

    .line 401
    .restart local v5    # "countryCode":Ljava/lang/String;
    .restart local v8    # "fields":[Ljava/lang/String;
    .restart local v11    # "lang":Ljava/lang/String;
    .restart local v17    # "timeZoneId":Ljava/lang/String;
    .restart local v19    # "tz":Ljava/util/TimeZone;
    :cond_7
    if-nez v5, :cond_9

    :try_start_9
    const-string v21, "Etc/GMT"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 402
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .line 469
    .end local v5    # "countryCode":Ljava/lang/String;
    .end local v8    # "fields":[Ljava/lang/String;
    .end local v11    # "lang":Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "timeZoneId":Ljava/lang/String;
    .end local v19    # "tz":Ljava/util/TimeZone;
    :catchall_1
    move-exception v21

    .line 470
    if-eqz v10, :cond_8

    .line 471
    :try_start_a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 474
    :cond_8
    :goto_5
    throw v21

    .line 408
    .restart local v5    # "countryCode":Ljava/lang/String;
    .restart local v8    # "fields":[Ljava/lang/String;
    .restart local v11    # "lang":Ljava/lang/String;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "timeZoneId":Ljava/lang/String;
    .restart local v19    # "tz":Ljava/util/TimeZone;
    :cond_9
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mCountryCodeToNameMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 409
    .local v4, "country":Ljava/lang/String;
    if-nez v4, :cond_a

    .line 410
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v5}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->getCountryNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mCountryCodeToNameMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneCountry:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mAlternateDefaultTimeZoneId:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 419
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 420
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneCountry:Ljava/lang/String;

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 422
    .local v6, "defaultTz":Ljava/util/TimeZone;
    if-eqz v6, :cond_b

    .line 423
    new-instance v21, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    move-object/from16 v0, v21

    invoke-direct {v0, v6, v4}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneInfo:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneInfo:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->getIdenticalTimeZoneInTheCountry(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)I

    move-result v20

    .line 426
    .local v20, "tzToOverride":I
    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneInfo:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .end local v6    # "defaultTz":Ljava/util/TimeZone;
    .end local v20    # "tzToOverride":I
    :cond_b
    :goto_6
    new-instance v18, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 449
    .local v18, "timeZoneInfo":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->getIdenticalTimeZoneInTheCountry(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)I

    move-result v9

    .line 450
    .local v9, "identicalTzIdx":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_c

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_c
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 433
    .end local v9    # "identicalTzIdx":I
    .end local v18    # "timeZoneInfo":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    .restart local v6    # "defaultTz":Ljava/util/TimeZone;
    .restart local v20    # "tzToOverride":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneInfo:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    .line 470
    .end local v4    # "country":Ljava/lang/String;
    .end local v5    # "countryCode":Ljava/lang/String;
    .end local v6    # "defaultTz":Ljava/util/TimeZone;
    .end local v8    # "fields":[Ljava/lang/String;
    .end local v17    # "timeZoneId":Ljava/lang/String;
    .end local v19    # "tz":Ljava/util/TimeZone;
    .end local v20    # "tzToOverride":I
    :cond_e
    if-eqz v10, :cond_3

    .line 471
    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_3

    .line 473
    :catch_3
    move-exception v21

    goto/16 :goto_3

    .line 365
    .end local v11    # "lang":Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v21

    goto/16 :goto_1

    .end local v7    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v22

    goto/16 :goto_4

    .line 473
    .restart local v7    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v21

    goto/16 :goto_3

    .end local v7    # "ex":Ljava/io/IOException;
    :catch_7
    move-exception v22

    goto/16 :goto_5
.end method

.method private populateDisplayNameOverrides(Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 267
    sget v5, Lcom/codetroopers/betterpickers/R$array;->timezone_rename_ids:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "ids":[Ljava/lang/String;
    sget v5, Lcom/codetroopers/betterpickers/R$array;->timezone_rename_labels:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "labels":[Ljava/lang/String;
    array-length v3, v1

    .line 271
    .local v3, "length":I
    array-length v5, v1

    array-length v6, v2

    if-eq v5, v6, :cond_0

    .line 272
    const-string v5, "TimeZoneData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timezone_rename_ids len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " timezone_rename_labels len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    array-length v5, v1

    array-length v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 277
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 278
    iget-object v5, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesById:Ljava/util/HashMap;

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .line 279
    .local v4, "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    if-eqz v4, :cond_1

    .line 280
    aget-object v5, v2, v0

    iput-object v5, v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    .line 277
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    const-string v5, "TimeZoneData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find timezone with label: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 285
    .end local v4    # "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :cond_2
    return-void
.end method

.method private printTimeZones()V
    .locals 7

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "last":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    const/4 v0, 0x1

    .line 235
    .local v0, "first":Z
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .line 243
    .local v3, "tz":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    iget-object v5, v3, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "name":Ljava/lang/String;
    const-string v5, "GMT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    const-string v6, "Etc/GMT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 245
    const-string v5, "GMT"

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    if-eqz v1, :cond_2

    .line 251
    invoke-virtual {v1, v3}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->compareTo(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)I

    move-result v5

    if-nez v5, :cond_3

    .line 252
    if-eqz v0, :cond_1

    .line 253
    const-string v5, "SAME"

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x0

    .line 256
    :cond_1
    const-string v5, "SAME"

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_2
    :goto_1
    move-object v1, v3

    .line 262
    goto :goto_0

    .line 258
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 263
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "tz":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :cond_4
    const-string v4, "TimeZoneData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total number of tz\'s = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method


# virtual methods
.method public findIndexByTimeZoneIdSlow(Ljava/lang/String;)I
    .locals 4
    .param p1, "timeZoneId"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "idx":I
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .line 112
    .local v1, "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    iget-object v3, v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    .end local v0    # "idx":I
    .end local v1    # "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :goto_1
    return v0

    .line 115
    .restart local v0    # "idx":I
    .restart local v1    # "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 116
    goto :goto_0

    .line 117
    .end local v1    # "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public get(I)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    return-object v0
.end method

.method public getDefaultTimeZoneIndex()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneInfo:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getTimeZonesByOffset(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "offsetHr"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    add-int/lit8 v0, p1, 0x14

    .line 310
    .local v0, "index":I
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 311
    :cond_0
    const/4 v1, 0x0

    .line 313
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesByOffsets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasTimeZonesInHrOffset(I)Z
    .locals 2
    .param p1, "offsetHr"    # I

    .prologue
    .line 288
    add-int/lit8 v0, p1, 0x14

    .line 289
    .local v0, "index":I
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 290
    :cond_0
    const/4 v1, 0x0

    .line 292
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    aget-boolean v1, v1, v0

    goto :goto_0
.end method

.method loadTzs(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    .line 122
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->loadTzsInZoneTab(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v4

    .line 123
    .local v4, "processedTimeZones":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "tzIds":[Ljava/lang/String;
    array-length v10, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v6, v7, v9

    .line 130
    .local v6, "tzId":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 129
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 139
    :cond_1
    const-string v11, "Etc/GMT"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 143
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 144
    .local v5, "tz":Ljava/util/TimeZone;
    if-nez v5, :cond_2

    .line 145
    const-string v11, "TimeZoneData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Timezone not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    :cond_2
    new-instance v8, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    const/4 v11, 0x0

    invoke-direct {v8, v5, v11}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 151
    .local v8, "tzInfo":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    invoke-direct {p0, v8}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->getIdenticalTimeZoneInTheCountry(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 155
    iget-object v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    .end local v5    # "tz":Ljava/util/TimeZone;
    .end local v6    # "tzId":Ljava/lang/String;
    .end local v8    # "tzInfo":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :cond_3
    iget-object v9, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 182
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v9, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesByCountry:Ljava/util/LinkedHashMap;

    .line 183
    new-instance v9, Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    array-length v10, v10

    invoke-direct {v9, v10}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v9, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesByOffsets:Landroid/util/SparseArray;

    .line 184
    new-instance v9, Ljava/util/HashMap;

    iget-object v10, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    iput-object v9, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesById:Ljava/util/HashMap;

    .line 185
    iget-object v9, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .line 188
    .local v5, "tz":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    iget-object v10, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesById:Ljava/util/HashMap;

    iget-object v11, v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 190
    .end local v5    # "tz":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :cond_4
    iget-object v9, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->populateDisplayNameOverrides(Landroid/content/res/Resources;)V

    .line 192
    new-instance v0, Ljava/util/Date;

    iget-wide v10, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeMillis:J

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 193
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 195
    .local v1, "defaultLocal":Ljava/util/Locale;
    const/4 v3, 0x0

    .line 196
    .local v3, "idx":I
    iget-object v9, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .line 199
    .restart local v5    # "tz":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    iget-object v10, v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    if-nez v10, :cond_5

    .line 200
    iget-object v10, v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    iget-object v11, v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    invoke-virtual {v11, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12, v1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    .line 206
    :cond_5
    iget-object v10, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesByCountry:Ljava/util/LinkedHashMap;

    iget-object v11, v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 207
    .local v2, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v2, :cond_6

    .line 208
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .restart local v2    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesByCountry:Ljava/util/LinkedHashMap;

    iget-object v11, v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v10, v11, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-direct {p0, v3, v5}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->indexByOffsets(ILcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)V

    .line 219
    iget-object v10, v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    const-string v11, ":00"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 220
    iget-object v10, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZoneNames:Ljava/util/HashSet;

    iget-object v11, v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 227
    goto :goto_3

    .line 230
    .end local v2    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "tz":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :cond_8
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "timeMillis"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeMillis:J

    .line 94
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
