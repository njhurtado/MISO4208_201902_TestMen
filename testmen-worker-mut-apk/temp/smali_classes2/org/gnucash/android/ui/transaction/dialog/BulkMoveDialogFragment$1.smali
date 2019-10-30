.class Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$1;
.super Ljava/lang/Object;
.source "BulkMoveDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->dismiss()V

    .line 145
    return-void
.end method
