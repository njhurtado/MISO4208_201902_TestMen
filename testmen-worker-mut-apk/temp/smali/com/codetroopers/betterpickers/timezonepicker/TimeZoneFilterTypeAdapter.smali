.class public Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimeZoneFilterTypeAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;,
        Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;,
        Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;,
        Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FILTER_TYPE_COUNTRY:I = 0x1

.field public static final FILTER_TYPE_EMPTY:I = -0x1

.field public static final FILTER_TYPE_GMT:I = 0x3

.field public static final FILTER_TYPE_NONE:I = 0x0

.field public static final FILTER_TYPE_STATE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "TimeZoneFilterTypeAdapter"


# instance fields
.field mDummyListener:Landroid/view/View$OnClickListener;

.field private mFilter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

.field private mLiveResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveResultsCount:I

.field private mSansSerifLightTypeface:Landroid/graphics/Typeface;

.field private mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tzd"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;
    .param p3, "l"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResultsCount:I

    .line 150
    new-instance v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$1;-><init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mDummyListener:Landroid/view/View$OnClickListener;

    .line 99
    iput-object p2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    .line 100
    iput-object p3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    .line 101
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mSansSerifLightTypeface:Landroid/graphics/Typeface;

    .line 106
    return-void
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mTimeZoneData:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$402(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResultsCount:I

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResultsCount:I

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mFilter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;-><init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$1;)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mFilter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mFilter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;

    return-object v0
.end method

.method public getItem(I)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->getItem(I)Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 120
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 127
    if-eqz p2, :cond_1

    .line 128
    move-object v1, p2

    .line 134
    .local v1, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;

    .line 136
    .local v2, "vh":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 137
    const-string v3, "TimeZoneFilterTypeAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    .line 142
    .local v0, "filter":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    iget v3, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->type:I

    iput v3, v2, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->filterType:I

    .line 143
    iget-object v3, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->constraint:Ljava/lang/String;

    iput-object v3, v2, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->str:Ljava/lang/String;

    .line 144
    iget v3, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->time:I

    iput v3, v2, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->time:I

    .line 145
    iget-object v3, v2, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->strTextView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->constraint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v3, v2, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->strTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mSansSerifLightTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    return-object v1

    .line 130
    .end local v0    # "filter":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "vh":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;
    :cond_1
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/codetroopers/betterpickers/R$layout;->time_zone_filter_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 131
    .restart local v1    # "v":Landroid/view/View;
    invoke-static {v1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->setupViewHolder(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;

    .line 166
    .local v0, "vh":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->mListener:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    iget v2, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->filterType:I

    iget-object v3, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->str:Ljava/lang/String;

    iget v4, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->time:I

    invoke-interface {v1, v2, v3, v4}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;->onSetFilter(ILjava/lang/String;I)V

    .line 168
    .end local v0    # "vh":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->notifyDataSetInvalidated()V

    .line 169
    return-void
.end method
