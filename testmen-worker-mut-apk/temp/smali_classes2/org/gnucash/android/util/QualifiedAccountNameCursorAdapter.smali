.class public Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "QualifiedAccountNameCursorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 46
    const v2, 0x1090008

    new-array v4, v1, [Ljava/lang/String;

    const-string v0, "full_name"

    aput-object v0, v4, v6

    new-array v5, v1, [I

    const v0, 0x1020014

    aput v0, v5, v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 49
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;->setDropDownViewResource(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "selectedSpinnerItem"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 60
    new-array v4, v1, [Ljava/lang/String;

    const-string v0, "full_name"

    aput-object v0, v4, v6

    new-array v5, v1, [I

    const v0, 0x1020014

    aput v0, v5, v6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 63
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;->setDropDownViewResource(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 69
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "textView":Landroid/widget/TextView;
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 72
    const-string v2, "favorite"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 73
    .local v0, "isFavorite":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 74
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const v2, 0x7f0800c2

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/String;)I
    .locals 6
    .param p1, "accountUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v0

    .line 87
    .local v0, "accountId":J
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 88
    invoke-virtual {p0, v2}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-nez v3, :cond_0

    .line 92
    .end local v2    # "pos":I
    :goto_1
    return v2

    .line 87
    .restart local v2    # "pos":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method
