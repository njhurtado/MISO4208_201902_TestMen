.class Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;
.super Ljava/lang/Object;
.source "NumberPickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getEnteredNumber()Ljava/math/BigDecimal;

    move-result-object v9

    .line 186
    .local v9, "number":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/math/BigDecimal;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/math/BigDecimal;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4, v9}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$300(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;Ljava/math/BigDecimal;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4, v9}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$400(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;Ljava/math/BigDecimal;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    sget v5, Lcom/codetroopers/betterpickers/R$string;->min_max_error:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/math/BigDecimal;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/math/BigDecimal;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, "errorText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getErrorView()Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getErrorView()Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->show()V

    .line 215
    .end local v10    # "errorText":Ljava/lang/String;
    :goto_0
    return-void

    .line 191
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/math/BigDecimal;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4, v9}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$300(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;Ljava/math/BigDecimal;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    sget v5, Lcom/codetroopers/betterpickers/R$string;->min_error:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/math/BigDecimal;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 193
    .restart local v10    # "errorText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getErrorView()Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getErrorView()Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->show()V

    goto :goto_0

    .line 196
    .end local v10    # "errorText":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/math/BigDecimal;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4, v9}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$400(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;Ljava/math/BigDecimal;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    sget v5, Lcom/codetroopers/betterpickers/R$string;->max_error:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/math/BigDecimal;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 198
    .restart local v10    # "errorText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getErrorView()Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getErrorView()Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->show()V

    goto/16 :goto_0

    .line 202
    .end local v10    # "errorText":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$500(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;

    .line 203
    .local v3, "handler":Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$600(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getNumber()Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getDecimal()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getIsNegative()Z

    move-result v8

    invoke-interface/range {v3 .. v9}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;->onDialogNumberSet(ILjava/math/BigInteger;DZLjava/math/BigDecimal;)V

    goto :goto_1

    .line 205
    .end local v3    # "handler":Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 206
    .local v2, "activity":Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v20

    .line 207
    .local v20, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v4, v2, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;

    if-eqz v4, :cond_6

    move-object v11, v2

    .line 208
    check-cast v11, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;

    .line 209
    .local v11, "act":Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$600(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getNumber()Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getDecimal()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getIsNegative()Z

    move-result v16

    move-object/from16 v17, v9

    invoke-interface/range {v11 .. v17}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;->onDialogNumberSet(ILjava/math/BigInteger;DZLjava/math/BigDecimal;)V

    .line 214
    .end local v11    # "act":Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->dismiss()V

    goto/16 :goto_0

    .line 210
    :cond_6
    move-object/from16 v0, v20

    instance-of v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;

    if-eqz v4, :cond_5

    move-object/from16 v13, v20

    .line 211
    check-cast v13, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;

    .line 212
    .local v13, "frag":Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$600(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getNumber()Ljava/math/BigInteger;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getDecimal()D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/numberpicker/NumberPicker;->getIsNegative()Z

    move-result v18

    move-object/from16 v19, v9

    invoke-interface/range {v13 .. v19}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$NumberPickerDialogHandlerV2;->onDialogNumberSet(ILjava/math/BigInteger;DZLjava/math/BigDecimal;)V

    goto :goto_2
.end method
