.class Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BudgetFormFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;-><init>(Lorg/gnucash/android/ui/budget/BudgetFormFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;

.field final synthetic val$target:Lorg/gnucash/android/ui/budget/BudgetFormFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;Lorg/gnucash/android/ui/budget/BudgetFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding$2;->this$0:Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;

    iput-object p2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding$2;->val$target:Lorg/gnucash/android/ui/budget/BudgetFormFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding$2;->val$target:Lorg/gnucash/android/ui/budget/BudgetFormFragment;

    invoke-virtual {v0, p1}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->onClickBudgetStartDate(Landroid/view/View;)V

    .line 56
    return-void
.end method
