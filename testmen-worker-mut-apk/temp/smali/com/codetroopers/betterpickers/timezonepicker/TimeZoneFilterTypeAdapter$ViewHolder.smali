.class Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TimeZoneFilterTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field filterType:I

.field str:Ljava/lang/String;

.field strTextView:Landroid/widget/TextView;

.field time:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setupViewHolder(Landroid/view/View;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 64
    new-instance v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;-><init>()V

    .line 65
    .local v0, "vh":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;
    sget v1, Lcom/codetroopers/betterpickers/R$id;->value:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->strTextView:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
