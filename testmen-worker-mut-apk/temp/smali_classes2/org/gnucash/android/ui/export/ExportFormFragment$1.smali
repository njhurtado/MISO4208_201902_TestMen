.class Lorg/gnucash/android/ui/export/ExportFormFragment$1;
.super Ljava/lang/Object;
.source "ExportFormFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 356
    iput-object p1, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 359
    if-nez p2, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 396
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    sget-object v4, Lorg/gnucash/android/export/ExportParams$ExportTarget;->SD_CARD:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-static {v3, v4}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$002(Lorg/gnucash/android/ui/export/ExportFormFragment;Lorg/gnucash/android/export/ExportParams$ExportTarget;)Lorg/gnucash/android/export/ExportParams$ExportTarget;

    goto :goto_0

    .line 363
    :pswitch_0
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    sget-object v4, Lorg/gnucash/android/export/ExportParams$ExportTarget;->URI:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-static {v3, v4}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$002(Lorg/gnucash/android/ui/export/ExportFormFragment;Lorg/gnucash/android/export/ExportParams$ExportTarget;)Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .line 364
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v3, v3, Lorg/gnucash/android/ui/export/ExportFormFragment;->mRecurrenceOptionsView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$100(Lorg/gnucash/android/ui/export/ExportFormFragment;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v4, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-static {v4}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$100(Lorg/gnucash/android/ui/export/ExportFormFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$200(Lorg/gnucash/android/ui/export/ExportFormFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :pswitch_1
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v4, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    const v5, 0x7f0f00d8

    invoke-virtual {v4, v5}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$200(Lorg/gnucash/android/ui/export/ExportFormFragment;Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v3, v3, Lorg/gnucash/android/ui/export/ExportFormFragment;->mRecurrenceOptionsView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    sget-object v4, Lorg/gnucash/android/export/ExportParams$ExportTarget;->DROPBOX:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-static {v3, v4}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$002(Lorg/gnucash/android/ui/export/ExportFormFragment;Lorg/gnucash/android/export/ExportParams$ExportTarget;)Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .line 372
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    const v4, 0x7f0f0075

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "dhjh8ke9wf05948"

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "dropboxAppKey":Ljava/lang/String;
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    const v4, 0x7f0f0076

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "h2t9fphj3nr4wkw"

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "dropboxAppSecret":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/export/DropboxHelper;->hasToken()Z

    move-result v3

    if-nez v3, :cond_0

    .line 376
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/dropbox/core/android/Auth;->startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    .end local v0    # "dropboxAppKey":Ljava/lang/String;
    .end local v1    # "dropboxAppSecret":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-static {v3, v6}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$200(Lorg/gnucash/android/ui/export/ExportFormFragment;Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v3, v3, Lorg/gnucash/android/ui/export/ExportFormFragment;->mRecurrenceOptionsView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    sget-object v4, Lorg/gnucash/android/export/ExportParams$ExportTarget;->OWNCLOUD:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-static {v3, v4}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$002(Lorg/gnucash/android/ui/export/ExportFormFragment;Lorg/gnucash/android/export/ExportParams$ExportTarget;)Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .line 383
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    const v5, 0x7f0f00b3

    .line 384
    invoke-virtual {v4, v5}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 385
    invoke-static {v6}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->newInstance(Landroid/support/v7/preference/Preference;)Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    move-result-object v2

    .line 386
    .local v2, "ocDialog":Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "ownCloud dialog"

    invoke-virtual {v2, v3, v4}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    .end local v2    # "ocDialog":Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;
    :pswitch_3
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v4, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    const v5, 0x7f0f0105

    invoke-virtual {v4, v5}, Lorg/gnucash/android/ui/export/ExportFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$200(Lorg/gnucash/android/ui/export/ExportFormFragment;Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    sget-object v4, Lorg/gnucash/android/export/ExportParams$ExportTarget;->SHARING:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-static {v3, v4}, Lorg/gnucash/android/ui/export/ExportFormFragment;->access$002(Lorg/gnucash/android/ui/export/ExportFormFragment;Lorg/gnucash/android/export/ExportParams$ExportTarget;)Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .line 392
    iget-object v3, p0, Lorg/gnucash/android/ui/export/ExportFormFragment$1;->this$0:Lorg/gnucash/android/ui/export/ExportFormFragment;

    iget-object v3, v3, Lorg/gnucash/android/ui/export/ExportFormFragment;->mRecurrenceOptionsView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
