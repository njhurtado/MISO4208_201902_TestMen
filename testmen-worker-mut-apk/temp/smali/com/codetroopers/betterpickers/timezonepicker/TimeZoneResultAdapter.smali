.class public Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimeZoneResultAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_INDEX:I = -0x64

.field private static final KEY_RECENT_TIMEZONES:Ljava/lang/String; = "preferences_recent_timezones"

.field private static final MAX_RECENT_TIMEZONES:I = 0x3

.field private static final RECENT_TIMEZONES_DELIMITER:Ljava/lang/String; = ","

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.android.calendar_preferences"

.field private static final TAG:Ljava/lang/String; = "TimeZoneResultAdapter"

.field private static final VIEW_TAG_TIME_ZONE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilteredTimeZoneIndices:[I

.field private mFilteredTimeZoneLength:I

.field private mHasResults:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastFilterString:Ljava/lang/String;

.field private mLastFilterTime:I

.field private mLastFilterType:I

.field private mSansSerifLightTypeface:Landroid/graphics/Typeface;

.field private mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

.field private mTimeZoneSetListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/codetroopers/betterpickers/R$id;->time_zone:I

    sput v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->VIEW_TAG_TIME_ZONE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tzd"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;
    .param p3, "l"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    iput-boolean v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mHasResults:Z

    .line 94
    iput v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    .line 99
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    .line 101
    iput-object p3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneSetListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;

    .line 103
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 105
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mSansSerifLightTypeface:Landroid/graphics/Typeface;

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->onSetFilter(ILjava/lang/String;I)V

    .line 111
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 254
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    if-lt p1, v0, :cond_1

    .line 255
    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->get(I)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLastFilterString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mLastFilterString:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFilterTime()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mLastFilterTime:I

    return v0
.end method

.method public getLastFilterType()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mLastFilterType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 278
    move-object v2, p2

    .line 280
    .local v2, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    aget v5, v5, p1

    const/16 v6, -0x64

    if-ne v5, v6, :cond_0

    .line 281
    iget-object v5, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/codetroopers/betterpickers/R$layout;->empty_time_zone_item:I

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 283
    sget v5, Lcom/codetroopers/betterpickers/R$id;->empty_item:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mSansSerifLightTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object v3, v2

    .line 314
    .end local v2    # "v":Landroid/view/View;
    .local v3, "v":Landroid/view/View;
    :goto_0
    return-object v3

    .line 288
    .end local v3    # "v":Landroid/view/View;
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    if-eqz v2, :cond_1

    sget v5, Lcom/codetroopers/betterpickers/R$id;->empty_item:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 289
    :cond_1
    iget-object v5, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/codetroopers/betterpickers/R$layout;->time_zone_item:I

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 290
    invoke-static {v2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->setupViewHolder(Landroid/view/View;)V

    .line 293
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;

    .line 295
    .local v4, "vh":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;
    iget-object v5, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->get(I)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    move-result-object v1

    .line 296
    .local v1, "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    sget v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->VIEW_TAG_TIME_ZONE:I

    invoke-virtual {v2, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 298
    iget-object v5, v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->timeZone:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mSansSerifLightTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 299
    iget-object v5, v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->timeOffset:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mSansSerifLightTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 300
    iget-object v5, v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->location:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mSansSerifLightTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 302
    iget-object v5, v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->timeZone:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v5, v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->timeOffset:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->getGmtDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    .line 307
    .local v0, "location":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 308
    iget-object v5, v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->location:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    move-object v3, v2

    .line 314
    .end local v2    # "v":Landroid/view/View;
    .restart local v3    # "v":Landroid/view/View;
    goto :goto_0

    .line 310
    .end local v3    # "v":Landroid/view/View;
    .restart local v2    # "v":Landroid/view/View;
    :cond_3
    iget-object v5, v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->location:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v5, v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->location:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mHasResults:Z

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    aget v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneSetListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;

    if-eqz v1, :cond_0

    .line 326
    sget v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->VIEW_TAG_TIME_ZONE:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .line 327
    .local v0, "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneSetListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;

    invoke-interface {v1, v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;->onTimeZoneSet(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)V

    .line 329
    iget-object v1, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    .line 332
    .end local v0    # "tzi":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
    :cond_0
    return-void
.end method

.method public onSetFilter(ILjava/lang/String;I)V
    .locals 15
    .param p1, "filterType"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "time"    # I

    .prologue
    .line 136
    move/from16 v0, p1

    iput v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mLastFilterType:I

    .line 137
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mLastFilterString:Ljava/lang/String;

    .line 138
    move/from16 v0, p3

    iput v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mLastFilterTime:I

    .line 140
    const/4 v11, 0x0

    iput v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    .line 141
    const/4 v3, 0x0

    .line 143
    .local v3, "idx":I
    packed-switch p1, :pswitch_data_0

    .line 192
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    .line 145
    :pswitch_0
    iget-object v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    iget v12, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    const/16 v13, -0x64

    aput v13, v11, v12

    .line 194
    :cond_0
    :pswitch_1
    iget v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    if-lez v11, :cond_3

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mHasResults:Z

    .line 196
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->notifyDataSetChanged()V

    .line 197
    return-void

    .line 149
    :pswitch_2
    iget-object v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    invoke-virtual {v11}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->getDefaultTimeZoneIndex()I

    move-result v1

    .line 150
    .local v1, "defaultTzIndex":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_1

    .line 151
    iget-object v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    iget v12, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    aput v1, v11, v12

    .line 155
    :cond_1
    iget-object v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mContext:Landroid/content/Context;

    const-string v12, "com.android.calendar_preferences"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 157
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v11, "preferences_recent_timezones"

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "recentsString":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 159
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "recents":[Ljava/lang/String;
    array-length v11, v7

    add-int/lit8 v2, v11, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 161
    aget-object v11, v7, v2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    aget-object v11, v7, v2

    iget-object v12, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    iget-object v12, v12, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    .line 162
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 163
    iget-object v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    aget-object v12, v7, v2

    invoke-virtual {v11, v12}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->findIndexByTimeZoneIdSlow(Ljava/lang/String;)I

    move-result v4

    .line 164
    .local v4, "index":I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_2

    .line 165
    iget-object v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    iget v12, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    aput v4, v11, v12

    .line 160
    .end local v4    # "index":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 173
    .end local v1    # "defaultTzIndex":I
    .end local v2    # "i":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v7    # "recents":[Ljava/lang/String;
    .end local v8    # "recentsString":Ljava/lang/String;
    :pswitch_3
    iget-object v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->getTimeZonesByOffset(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 174
    .local v5, "indices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_0

    .line 175
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 176
    .local v2, "i":Ljava/lang/Integer;
    iget-object v12, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    iget v13, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    goto :goto_2

    .line 181
    .end local v2    # "i":Ljava/lang/Integer;
    .end local v5    # "indices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_4
    iget-object v11, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    iget-object v11, v11, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;->mTimeZonesByCountry:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 182
    .local v9, "tzIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v9, :cond_0

    .line 183
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 184
    .local v10, "tzi":Ljava/lang/Integer;
    iget-object v12, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneIndices:[I

    iget v13, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mFilteredTimeZoneLength:I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    goto :goto_3

    .line 194
    .end local v9    # "tzIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "tzi":Ljava/lang/Integer;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public saveRecentTimezone(Ljava/lang/String;)V
    .locals 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 207
    iget-object v9, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->mContext:Landroid/content/Context;

    const-string v10, "com.android.calendar_preferences"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 209
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "preferences_recent_timezones"

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "recentsString":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 211
    move-object v6, p1

    .line 244
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "preferences_recent_timezones"

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    return-void

    .line 214
    :cond_0
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 215
    .local v5, "recents":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_2

    aget-object v7, v9, v8

    .line 216
    .local v7, "tzId":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 217
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 221
    .end local v7    # "tzId":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 222
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_3

    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 229
    :cond_3
    invoke-virtual {v5, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 233
    .local v1, "first":Z
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 234
    .local v4, "recent":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 235
    const/4 v1, 0x0

    .line 239
    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 226
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "first":Z
    .end local v4    # "recent":Ljava/lang/String;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 237
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "first":Z
    .restart local v4    # "recent":Ljava/lang/String;
    :cond_5
    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 241
    .end local v4    # "recent":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
