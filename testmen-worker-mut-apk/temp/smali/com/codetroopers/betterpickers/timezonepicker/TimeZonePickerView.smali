.class public Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;
.super Landroid/widget/LinearLayout;
.source "TimeZonePickerView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeZonePickerView"


# instance fields
.field private mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private mClearButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mFilterAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

.field private mFirstTime:Z

.field private mHideFilterSearchOnStart:Z

.field mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

.field private mSansSerifLightTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;JLcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "timeZone"    # Ljava/lang/String;
    .param p4, "timeMillis"    # J
    .param p6, "l"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;
    .param p7, "hideFilterSearch"    # Z

    .prologue
    const/4 v4, 0x1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    .line 52
    iput-boolean v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mFirstTime:Z

    .line 66
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mContext:Landroid/content/Context;

    .line 67
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 69
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/codetroopers/betterpickers/R$layout;->timezonepickerview:I

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/Roboto-Light.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mSansSerifLightTypeface:Landroid/graphics/Typeface;

    .line 74
    iput-boolean p7, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    .line 76
    new-instance v2, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;

    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p3, p4, p5}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 78
    .local v2, "tzd":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;
    new-instance v3, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2, p6}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;-><init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;)V

    iput-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    .line 79
    sget v3, Lcom/codetroopers/betterpickers/R$id;->timezonelist:I

    invoke-virtual {p0, v3}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 80
    .local v1, "timeZoneList":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    new-instance v3, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    invoke-direct {v3, v4, v2, v5}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;-><init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneData;Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;)V

    iput-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mFilterAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    .line 85
    sget v3, Lcom/codetroopers/betterpickers/R$id;->searchBox:I

    invoke-virtual {p0, v3}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 86
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mSansSerifLightTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, p0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, p0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v3, Lcom/codetroopers/betterpickers/R$string;->hint_time_zone_search:I

    sget v4, Lcom/codetroopers/betterpickers/R$drawable;->ic_search_holo_light:I

    invoke-direct {p0, v3, v4}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->updateHint(II)V

    .line 92
    sget v3, Lcom/codetroopers/betterpickers/R$id;->clear_search:I

    invoke-virtual {p0, v3}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mClearButton:Landroid/widget/ImageButton;

    .line 93
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mClearButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$1;

    invoke-direct {v4, p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView$1;-><init>(Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private filterOnString(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mFilterAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    .line 189
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mFilterAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method private updateHint(II)V
    .locals 9
    .param p1, "hintTextId"    # I
    .param p2, "imageDrawableId"    # I

    .prologue
    const/4 v8, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "hintText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 131
    .local v1, "searchIcon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v4, "   "

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 132
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 133
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 134
    .local v3, "textSize":I
    invoke-virtual {v1, v8, v8, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x21

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 136
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4, v2}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mClearButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mClearButton:Landroid/widget/ImageButton;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 160
    :cond_0
    return-void

    .line 158
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 142
    return-void
.end method

.method public getHideFilterSearchOnStart()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    return v0
.end method

.method public getLastFilterString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->getLastFilterString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastFilterTime()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->getLastFilterType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLastFilterType()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->getLastFilterType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->filterOnString(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
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
    .line 165
    .line 166
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 167
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    .line 171
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mFilterAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-virtual {v1, p2}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;->onClick(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mFirstTime:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mFirstTime:Z

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->filterOnString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showFilterResults(ILjava/lang/String;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "time"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;->onSetFilter(ILjava/lang/String;I)V

    .line 105
    :cond_0
    return-void
.end method
