.class public Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "ScheduledActionsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScheduledExportCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 505
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    .line 506
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 507
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 569
    invoke-super/range {p0 .. p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 570
    invoke-static {}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-result-object v6

    .line 571
    .local v6, "mScheduledActionDbAdapter":Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/ScheduledAction;

    move-result-object v9

    .line 573
    .local v9, "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    const v10, 0x7f090184

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 574
    .local v8, "primaryTextView":Landroid/widget/TextView;
    invoke-virtual {v9}, Lorg/gnucash/android/model/ScheduledAction;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/gnucash/android/export/ExportParams;->parseCsv(Ljava/lang/String;)Lorg/gnucash/android/export/ExportParams;

    move-result-object v7

    .line 575
    .local v7, "params":Lorg/gnucash/android/export/ExportParams;
    invoke-virtual {v7}, Lorg/gnucash/android/export/ExportParams;->getExportTarget()Lorg/gnucash/android/export/ExportParams$ExportTarget;

    move-result-object v10

    invoke-virtual {v10}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "exportDestination":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/gnucash/android/export/ExportParams;->getExportTarget()Lorg/gnucash/android/export/ExportParams$ExportTarget;

    move-result-object v10

    sget-object v11, Lorg/gnucash/android/export/ExportParams$ExportTarget;->URI:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    if-ne v10, v11, :cond_0

    .line 577
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lorg/gnucash/android/export/ExportParams;->getExportLocation()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 579
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/gnucash/android/export/ExportParams;->getExportFormat()Lorg/gnucash/android/export/ExportFormat;

    move-result-object v11

    invoke-virtual {v11}, Lorg/gnucash/android/export/ExportFormat;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 580
    invoke-virtual {v9}, Lorg/gnucash/android/model/ScheduledAction;->getActionType()Lorg/gnucash/android/model/ScheduledAction$ActionType;

    move-result-object v11

    invoke-virtual {v11}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 579
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    const v10, 0x7f09019c

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 585
    const v10, 0x7f0901b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 586
    .local v2, "descriptionTextView":Landroid/widget/TextView;
    invoke-virtual {v9}, Lorg/gnucash/android/model/ScheduledAction;->getRepeatString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    invoke-virtual {v9}, Lorg/gnucash/android/model/ScheduledAction;->getEndTime()J

    move-result-wide v4

    .line 588
    .local v4, "endTime":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_1

    .line 589
    const v10, 0x7f090184

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    .line 590
    invoke-virtual {v11}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x1060000

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 591
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    const v11, 0x7f0f0104

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 592
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-virtual {v9}, Lorg/gnucash/android/model/ScheduledAction;->getLastRunTime()J

    move-result-wide v16

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 591
    invoke-virtual {v10, v11, v12}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_1
    invoke-virtual {v9}, Lorg/gnucash/android/model/ScheduledAction;->getRepeatString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 511
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 512
    .local v7, "view":Landroid/view/View;
    move v3, p1

    .line 513
    .local v3, "itemPosition":I
    const v8, 0x7f09005c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 515
    .local v1, "checkbox":Landroid/widget/CheckBox;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "btn_check_holo_light"

    const-string v10, "drawable"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 516
    .local v2, "id":I
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 518
    const v8, 0x7f0901b6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 520
    .local v6, "secondaryText":Landroid/widget/TextView;
    new-instance v8, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$1;

    invoke-direct {v8, p0, v3}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$1;-><init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;I)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v4, p3

    .line 535
    check-cast v4, Landroid/widget/ListView;

    .line 536
    .local v4, "listView":Landroid/widget/ListView;
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-static {v8}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->access$500(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 537
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v8}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f060018

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 538
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v8}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x106000b

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    :goto_0
    move-object v0, v1

    .line 547
    .local v0, "checkBoxView":Landroid/view/View;
    move-object v5, v7

    .line 548
    .local v5, "parentView":Landroid/view/View;
    new-instance v8, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$2;

    invoke-direct {v8, p0, v0, v5}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter$2;-><init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 564
    return-object v7

    .line 540
    .end local v0    # "checkBoxView":Landroid/view/View;
    .end local v5    # "parentView":Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v8}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x106000d

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 541
    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    .line 542
    invoke-virtual {v8}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1060008

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 541
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
