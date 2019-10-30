.class public Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static NONE:I

.field private static OBJECT:I


# instance fields
.field private color:I

.field private inflater:Landroid/view/LayoutInflater;

.field private final objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->NONE:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->OBJECT:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;, "Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter<TT;>;"
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->objects:Ljava/util/List;

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 29
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010036

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->color:I

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;, "Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter<TT;>;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;, "Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter<TT;>;"
    move-object v2, p2

    .line 58
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->getItemViewType(I)I

    move-result v1

    .line 59
    .local v1, "type":I
    if-nez v2, :cond_0

    .line 60
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x1090003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :cond_0
    move-object v0, v2

    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "textView":Landroid/widget/TextView;
    sget v3, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->OBJECT:I

    if-ne v1, v3, :cond_1

    .line 65
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->color:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    return-object v2

    .line 68
    :cond_1
    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    sget v3, Lcom/uservoice/uservoicesdk/R$string;->uv_select_none:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;, "Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter<TT;>;"
    if-nez p1, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->objects:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;, "Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;, "Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter<TT;>;"
    if-nez p1, :cond_0

    sget v0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->NONE:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->OBJECT:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;, "Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter<TT;>;"
    move-object v2, p2

    .line 77
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->getItemViewType(I)I

    move-result v1

    .line 78
    .local v1, "type":I
    if-nez v2, :cond_0

    .line 79
    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x1090003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :cond_0
    move-object v0, v2

    .line 82
    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, "textView":Landroid/widget/TextView;
    sget v3, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->OBJECT:I

    if-ne v1, v3, :cond_1

    .line 84
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->color:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    return-object v2

    .line 87
    :cond_1
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/SpinnerAdapter;->color:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    sget v3, Lcom/uservoice/uservoicesdk/R$string;->uv_select_one:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
