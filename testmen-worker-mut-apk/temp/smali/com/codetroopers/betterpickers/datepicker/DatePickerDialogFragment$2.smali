.class Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;
.super Ljava/lang/Object;
.source "DatePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;

    .line 140
    .local v4, "handler":Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;
    iget-object v6, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v6}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)I

    move-result v6

    iget-object v7, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v7}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getYear()I

    move-result v7

    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getMonthOfYear()I

    move-result v8

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getDayOfMonth()I

    move-result v9

    invoke-interface {v4, v6, v7, v8, v9}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;->onDialogDateSet(IIII)V

    goto :goto_0

    .line 142
    .end local v4    # "handler":Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;
    :cond_0
    iget-object v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 143
    .local v1, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 144
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v5, v1, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 145
    check-cast v0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;

    .line 146
    .local v0, "act":Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;
    iget-object v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v6}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getYear()I

    move-result v6

    iget-object v7, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v7}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getMonthOfYear()I

    move-result v7

    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getDayOfMonth()I

    move-result v8

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;->onDialogDateSet(IIII)V

    .line 151
    .end local v0    # "act":Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->dismiss()V

    .line 152
    return-void

    .line 147
    :cond_2
    instance-of v5, v3, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;

    if-eqz v5, :cond_1

    move-object v2, v3

    .line 148
    check-cast v2, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;

    .line 149
    .local v2, "frag":Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;
    iget-object v5, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v6}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getYear()I

    move-result v6

    iget-object v7, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v7}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getMonthOfYear()I

    move-result v7

    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->getDayOfMonth()I

    move-result v8

    invoke-interface {v2, v5, v6, v7, v8}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$DatePickerDialogHandler;->onDialogDateSet(IIII)V

    goto :goto_1
.end method
