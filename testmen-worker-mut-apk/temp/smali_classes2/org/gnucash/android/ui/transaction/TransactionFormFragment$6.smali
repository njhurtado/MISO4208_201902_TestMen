.class Lorg/gnucash/android/ui/transaction/TransactionFormFragment$6;
.super Ljava/lang/Object;
.source "TransactionFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->toggleAmountInputEntryMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 537
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$6;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 540
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$6;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$000(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V

    .line 541
    return-void
.end method
