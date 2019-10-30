.class public Lorg/gnucash/android/util/CommoditiesCursorAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "CommoditiesCursorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutResource"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 39
    .line 40
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v0

    const-string v1, "mnemonic ASC"

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->fetchAllRecords(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    const-string v0, "fullname"

    aput-object v0, v4, v6

    new-array v5, v2, [I

    const v0, 0x1020014

    aput v0, v5, v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 39
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 43
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 47
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    .local v2, "textView":Landroid/widget/TextView;
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 50
    const-string v3, "fullname"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "currencyName":Ljava/lang/String;
    const-string v3, "mnemonic"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "currencyCode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
