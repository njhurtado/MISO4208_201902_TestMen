.class Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TimeZoneResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field location:Landroid/widget/TextView;

.field timeOffset:Landroid/widget/TextView;

.field timeZone:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setupViewHolder(Landroid/view/View;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 79
    new-instance v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;-><init>()V

    .line 80
    .local v0, "vh":Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;
    sget v1, Lcom/codetroopers/betterpickers/R$id;->time_zone:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->timeZone:Landroid/widget/TextView;

    .line 81
    sget v1, Lcom/codetroopers/betterpickers/R$id;->time_offset:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->timeOffset:Landroid/widget/TextView;

    .line 82
    sget v1, Lcom/codetroopers/betterpickers/R$id;->location:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneResultAdapter$ViewHolder;->location:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    return-void
.end method
