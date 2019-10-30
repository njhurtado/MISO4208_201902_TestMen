.class Lorg/gnucash/android/ui/export/ExportFormFragment$5;
.super Ljava/lang/Object;
.source "ExportFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 487
    iput-object p1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$5;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 490
    iget-object v0, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$5;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-static {v0, p1}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$300(Lorg/gnucash/android/ui/export/ExportFormFragment;Landroid/view/View;)V

    .line 491
    return-void
.end method
