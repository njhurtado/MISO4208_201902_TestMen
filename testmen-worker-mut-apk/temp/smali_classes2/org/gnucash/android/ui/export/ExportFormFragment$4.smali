.class Lorg/gnucash/android/ui/export/ExportFormFragment$4;
.super Ljava/lang/Object;
.source "ExportFormFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/export/ExportFormFragment;->bindViewListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/export/ExportFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/export/ExportFormFragment;

    .prologue
    .line 467
    iput-object p1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$4;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 470
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$4;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v4, v1, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartDate:Landroid/widget/TextView;

    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 471
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$4;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v1, v1, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartTime:Landroid/widget/TextView;

    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 472
    if-eqz p2, :cond_2

    const/high16 v0, 0x1060000

    .line 473
    .local v0, "color":I
    :goto_2
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$4;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v1, v1, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartDate:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$4;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    iget-object v1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$4;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v1, v1, Lorg/gnucash/android/ui/export/ExportFormFragment;->mExportStartTime:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$4;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    return-void

    .end local v0    # "color":I
    :cond_0
    move v1, v3

    .line 470
    goto :goto_0

    :cond_1
    move v2, v3

    .line 471
    goto :goto_1

    .line 472
    :cond_2
    const v0, 0x106000c

    goto :goto_2
.end method
