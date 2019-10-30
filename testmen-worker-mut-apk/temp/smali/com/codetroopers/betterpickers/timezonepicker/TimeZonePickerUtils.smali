.class public Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;
.super Ljava/lang/Object;
.source "TimeZonePickerUtils.java"


# static fields
.field public static final DST_SYMBOL_COLOR:I = -0x404041

.field public static final GMT_TEXT_COLOR:I = -0x777778

.field private static final TAG:Ljava/lang/String; = "TimeZonePickerUtils"

.field private static final mSpannableFactory:Landroid/text/Spannable$Factory;


# instance fields
.field private mDefaultLocale:Ljava/util/Locale;

.field private mOverrideIds:[Ljava/lang/String;

.field private mOverrideLabels:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    sput-object v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mSpannableFactory:Landroid/text/Spannable$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->cacheOverrides(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public static appendGmtOffset(Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "gmtOffset"    # I

    .prologue
    .line 124
    const-string v2, "GMT"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    if-gez p1, :cond_2

    .line 127
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 133
    .local v1, "p":I
    int-to-long v2, v1

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    const v2, 0xea60

    div-int v2, v1, v2

    rem-int/lit8 v0, v2, 0x3c

    .line 136
    .local v0, "min":I
    if-eqz v0, :cond_1

    .line 137
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 139
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    :cond_1
    return-void

    .line 129
    .end local v0    # "min":I
    .end local v1    # "p":I
    :cond_2
    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private buildGmtDisplayName(Ljava/util/TimeZone;JZ)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "timeMillis"    # J
    .param p4, "grayGmt"    # Z

    .prologue
    .line 85
    new-instance v9, Landroid/text/format/Time;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 86
    .local v9, "time":Landroid/text/format/Time;
    invoke-virtual {v9, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget v10, v9, Landroid/text/format/Time;->isDst:I

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_0
    invoke-direct {p0, p1, v10}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->getDisplayName(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v10, "  "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 95
    .local v3, "gmtOffset":I
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 96
    .local v4, "gmtStart":I
    invoke-static {v5, v3}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->appendGmtOffset(Ljava/lang/StringBuilder;I)V

    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 99
    .local v2, "gmtEnd":I
    const/4 v8, 0x0

    .line 100
    .local v8, "symbolStart":I
    const/4 v7, 0x0

    .line 101
    .local v7, "symbolEnd":I
    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 102
    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 104
    invoke-static {}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->getDstSymbol()C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 109
    :cond_0
    sget-object v10, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v10, v5}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v6

    .line 110
    .local v6, "spannableText":Landroid/text/Spannable;
    if-eqz p4, :cond_1

    .line 111
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    const v11, -0x777778

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v11, 0x21

    invoke-interface {v6, v10, v4, v2, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 115
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    const v11, -0x404041

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v11, 0x21

    invoke-interface {v6, v10, v8, v7, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 119
    :cond_2
    move-object v1, v6

    .line 120
    .local v1, "gmtDisplayName":Ljava/lang/CharSequence;
    return-object v1

    .line 90
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v1    # "gmtDisplayName":Ljava/lang/CharSequence;
    .end local v2    # "gmtEnd":I
    .end local v3    # "gmtOffset":I
    .end local v4    # "gmtStart":I
    .end local v6    # "spannableText":Landroid/text/Spannable;
    .end local v7    # "symbolEnd":I
    .end local v8    # "symbolStart":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private cacheOverrides(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/codetroopers/betterpickers/R$array;->timezone_rename_ids:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mOverrideIds:[Ljava/lang/String;

    .line 187
    sget v1, Lcom/codetroopers/betterpickers/R$array;->timezone_rename_labels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mOverrideLabels:[Ljava/lang/String;

    .line 188
    return-void
.end method

.method private getDisplayName(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .locals 5
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "daylightTime"    # Z

    .prologue
    const/4 v4, 0x1

    .line 163
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mOverrideIds:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mOverrideLabels:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 165
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, p2, v4, v1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 181
    :goto_0
    return-object v1

    .line 168
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mOverrideIds:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 169
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mOverrideIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mOverrideLabels:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v0, :cond_2

    .line 171
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mOverrideLabels:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    .line 173
    :cond_2
    const-string v1, "TimeZonePickerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timezone_rename_ids len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mOverrideIds:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timezone_rename_labels len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mOverrideLabels:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, p2, v4, v1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 168
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getDstSymbol()C
    .locals 2

    .prologue
    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 147
    const/16 v0, 0x2600

    .line 149
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2a

    goto :goto_0
.end method


# virtual methods
.method public getGmtDisplayName(Landroid/content/Context;Ljava/lang/String;JZ)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "millis"    # J
    .param p5, "grayGmt"    # Z

    .prologue
    .line 69
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 70
    .local v1, "timezone":Ljava/util/TimeZone;
    if-nez v1, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 81
    :goto_0
    return-object v2

    .line 74
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 75
    .local v0, "defaultLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    iput-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->mDefaultLocale:Ljava/util/Locale;

    .line 79
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->cacheOverrides(Landroid/content/Context;)V

    .line 81
    :cond_1
    invoke-direct {p0, v1, p3, p4, p5}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->buildGmtDisplayName(Ljava/util/TimeZone;JZ)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method
