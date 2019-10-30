.class Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/datepicker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardPagerAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;


# direct methods
.method public constructor <init>(Lcom/codetroopers/betterpickers/datepicker/DatePicker;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    .line 235
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 237
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 380
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 381
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x3

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 14
    .param p1, "collection"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 248
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 249
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$000(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)[C

    move-result-object v8

    aget-char v8, v8, p2

    const/16 v9, 0x4d

    if-ne v8, v9, :cond_0

    .line 251
    invoke-static/range {p2 .. p2}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$102(I)I

    .line 252
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v9, Lcom/codetroopers/betterpickers/R$layout;->keyboard_text_with_header:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 253
    .local v7, "view":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->first:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 254
    .local v3, "v1":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->second:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 255
    .local v4, "v2":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->third:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 256
    .local v5, "v3":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->fourth:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 257
    .local v6, "v4":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->header:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    .local v0, "header":Landroid/widget/TextView;
    sget v8, Lcom/codetroopers/betterpickers/R$string;->month_c:I

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/4 v10, 0x0

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 262
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/4 v10, 0x1

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 263
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/4 v10, 0x2

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 265
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/4 v10, 0x3

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 266
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/4 v10, 0x4

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 267
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/4 v10, 0x5

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 269
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/4 v10, 0x6

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 270
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/4 v10, 0x7

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 271
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/16 v10, 0x8

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 273
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/16 v10, 0x9

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 274
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/16 v10, 0xa

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 275
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    const/16 v10, 0xb

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v8, 0xc

    if-ge v1, v8, :cond_2

    .line 278
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v9, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonthAbbreviations:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 281
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$300(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 282
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v8, v8, v1

    sget v9, Lcom/codetroopers/betterpickers/R$id;->date_keyboard:I

    const-string v10, "month"

    invoke-virtual {v8, v9, v10}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 283
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mMonths:[Landroid/widget/Button;

    aget-object v8, v8, v1

    sget v9, Lcom/codetroopers/betterpickers/R$id;->date_month_int:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "header":Landroid/widget/TextView;
    .end local v1    # "i":I
    .end local v3    # "v1":Landroid/view/View;
    .end local v4    # "v2":Landroid/view/View;
    .end local v5    # "v3":Landroid/view/View;
    .end local v6    # "v4":Landroid/view/View;
    .end local v7    # "view":Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$000(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)[C

    move-result-object v8

    aget-char v8, v8, p2

    const/16 v9, 0x64

    if-ne v8, v9, :cond_3

    .line 287
    invoke-static/range {p2 .. p2}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$402(I)I

    .line 288
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v9, Lcom/codetroopers/betterpickers/R$layout;->keyboard_right_drawable_with_header:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 289
    .restart local v7    # "view":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->first:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 290
    .restart local v3    # "v1":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->second:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 291
    .restart local v4    # "v2":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->third:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 292
    .restart local v5    # "v3":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->fourth:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 293
    .restart local v6    # "v4":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->header:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 295
    .restart local v0    # "header":Landroid/widget/TextView;
    sget v8, Lcom/codetroopers/betterpickers/R$string;->day_c:I

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 297
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    const/4 v10, 0x1

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 298
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    const/4 v10, 0x2

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 299
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    const/4 v10, 0x3

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 301
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    const/4 v10, 0x4

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 302
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    const/4 v10, 0x5

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 303
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    const/4 v10, 0x6

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 305
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    const/4 v10, 0x7

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 306
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    const/16 v10, 0x8

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 307
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    const/16 v10, 0x9

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 309
    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v9, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateLeft:Landroid/widget/Button;

    .line 310
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateLeft:Landroid/widget/Button;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 311
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateLeft:Landroid/widget/Button;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$300(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 312
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    const/4 v10, 0x0

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 313
    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, v9, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    .line 315
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    const/16 v8, 0xa

    if-ge v1, v8, :cond_1

    .line 316
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 319
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$300(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 320
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    sget v9, Lcom/codetroopers/betterpickers/R$id;->date_keyboard:I

    const-string v10, "date"

    invoke-virtual {v8, v9, v10}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 321
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    sget v9, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_1
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$500(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$300(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 326
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mDateRight:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    .end local v0    # "header":Landroid/widget/TextView;
    .end local v1    # "i":I
    .end local v3    # "v1":Landroid/view/View;
    .end local v4    # "v2":Landroid/view/View;
    .end local v5    # "v3":Landroid/view/View;
    .end local v6    # "v4":Landroid/view/View;
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->setLeftRightEnabled()V

    .line 371
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->updateDate()V

    .line 372
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$700(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)V

    .line 373
    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 375
    return-object v7

    .line 327
    .end local v7    # "view":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$000(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)[C

    move-result-object v8

    aget-char v8, v8, p2

    const/16 v9, 0x79

    if-ne v8, v9, :cond_4

    .line 329
    invoke-static/range {p2 .. p2}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$602(I)I

    .line 330
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v9, Lcom/codetroopers/betterpickers/R$layout;->keyboard_with_header:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 331
    .restart local v7    # "view":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->first:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 332
    .restart local v3    # "v1":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->second:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 333
    .restart local v4    # "v2":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->third:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 334
    .restart local v5    # "v3":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->fourth:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 335
    .restart local v6    # "v4":Landroid/view/View;
    sget v8, Lcom/codetroopers/betterpickers/R$id;->header:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 337
    .restart local v0    # "header":Landroid/widget/TextView;
    sget v8, Lcom/codetroopers/betterpickers/R$string;->year_c:I

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 339
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v10, 0x1

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 340
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v10, 0x2

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 341
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v10, 0x3

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 343
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v10, 0x4

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 344
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v10, 0x5

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 345
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v10, 0x6

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 347
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v10, 0x7

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 348
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    const/16 v10, 0x8

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 349
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    const/16 v10, 0x9

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 351
    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v9, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearLeft:Landroid/widget/Button;

    .line 352
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearLeft:Landroid/widget/Button;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 353
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearLeft:Landroid/widget/Button;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$300(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 354
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v9, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v10, 0x0

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v9, v10

    .line 355
    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    sget v8, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v9, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearRight:Landroid/widget/Button;

    .line 356
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearRight:Landroid/widget/Button;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 357
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearRight:Landroid/widget/Button;

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$300(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 359
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    const/16 v8, 0xa

    if-ge v1, v8, :cond_2

    .line 360
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$200(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 363
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    invoke-static {v9}, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->access$300(Lcom/codetroopers/betterpickers/datepicker/DatePicker;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 364
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    sget v9, Lcom/codetroopers/betterpickers/R$id;->date_keyboard:I

    const-string v10, "year"

    invoke-virtual {v8, v9, v10}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 365
    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v8, v8, v1

    sget v9, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 368
    .end local v0    # "header":Landroid/widget/TextView;
    .end local v1    # "i":I
    .end local v3    # "v1":Landroid/view/View;
    .end local v4    # "v2":Landroid/view/View;
    .end local v5    # "v3":Landroid/view/View;
    .end local v6    # "v4":Landroid/view/View;
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/datepicker/DatePicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePicker;

    iget-object v8, v8, Lcom/codetroopers/betterpickers/datepicker/DatePicker;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v7    # "view":Landroid/view/View;
    goto/16 :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 390
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
