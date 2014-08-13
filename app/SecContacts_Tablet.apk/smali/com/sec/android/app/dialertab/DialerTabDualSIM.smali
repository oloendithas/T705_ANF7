.class public Lcom/sec/android/app/dialertab/DialerTabDualSIM;
.super Ljava/lang/Object;
.source "DialerTabDualSIM.java"


# static fields
.field private static ONE_HAND_ENABLED:Ljava/lang/String; = null

.field public static final REGISTERINFO_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "DialerTabDualSIM"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "content://com.sec.provider.simcardmanagement/registerinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->REGISTERINFO_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "onehand_dialer_enabled"

    sput-object v0, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->ONE_HAND_ENABLED:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallSimIcon(Landroid/content/Context;I)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 206
    move-object v1, p0

    .line 207
    .local v1, "mContext":Landroid/content/Context;
    const/4 v4, 0x0

    .line 208
    .local v4, "simIconIdx":I
    const/4 v3, 0x0

    .line 209
    .local v3, "simIcon":I
    const/4 v2, 0x0

    .line 211
    .local v2, "mOneHandOnOff":Z
    const-string v7, "feature_one_hand_support "

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 212
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v2, v5

    .line 216
    :cond_0
    :goto_0
    if-ne p1, v5, :cond_2

    .line 217
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "select_icon_2"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 226
    :goto_1
    const-string v6, "number_of_select_icon_is_9"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 227
    const-string v6, "feature_one_hand_support "

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne v2, v5, :cond_3

    .line 228
    packed-switch v4, :pswitch_data_0

    .line 257
    const v3, 0x7f0202fa

    .line 376
    :goto_2
    return v3

    :cond_1
    move v2, v6

    .line 212
    goto :goto_0

    .line 219
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "select_icon_1"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 230
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v3, 0x7f0202fa

    .line 231
    goto :goto_2

    .line 233
    :pswitch_1
    const v3, 0x7f0202fc

    .line 234
    goto :goto_2

    .line 236
    :pswitch_2
    const v3, 0x7f020308

    .line 237
    goto :goto_2

    .line 239
    :pswitch_3
    const v3, 0x7f02030a

    .line 240
    goto :goto_2

    .line 242
    :pswitch_4
    const v3, 0x7f020304

    .line 243
    goto :goto_2

    .line 245
    :pswitch_5
    const v3, 0x7f020302

    .line 246
    goto :goto_2

    .line 248
    :pswitch_6
    const v3, 0x7f020300

    .line 249
    goto :goto_2

    .line 251
    :pswitch_7
    const v3, 0x7f020306

    .line 252
    goto :goto_2

    .line 254
    :pswitch_8
    const v3, 0x7f0202fe

    .line 255
    goto :goto_2

    .line 262
    :cond_3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v5, :cond_4

    .line 263
    packed-switch v4, :pswitch_data_1

    .line 292
    const v3, 0x7f0201f1

    .line 293
    goto :goto_2

    .line 265
    :pswitch_9
    const v3, 0x7f0201f1

    .line 266
    goto :goto_2

    .line 268
    :pswitch_a
    const v3, 0x7f0201f7

    .line 269
    goto :goto_2

    .line 271
    :pswitch_b
    const v3, 0x7f02021f

    .line 272
    goto :goto_2

    .line 274
    :pswitch_c
    const v3, 0x7f020224

    .line 275
    goto :goto_2

    .line 277
    :pswitch_d
    const v3, 0x7f020213

    .line 278
    goto :goto_2

    .line 280
    :pswitch_e
    const v3, 0x7f02020f

    .line 281
    goto :goto_2

    .line 283
    :pswitch_f
    const v3, 0x7f02020b

    .line 284
    goto :goto_2

    .line 286
    :pswitch_10
    const v3, 0x7f02021b

    .line 287
    goto :goto_2

    .line 289
    :pswitch_11
    const v3, 0x7f020203

    .line 290
    goto :goto_2

    .line 296
    :cond_4
    packed-switch v4, :pswitch_data_2

    .line 325
    const v3, 0x7f0201f0

    .line 326
    goto :goto_2

    .line 298
    :pswitch_12
    const v3, 0x7f0201f0

    .line 299
    goto :goto_2

    .line 301
    :pswitch_13
    const v3, 0x7f0201f6

    .line 302
    goto :goto_2

    .line 304
    :pswitch_14
    const v3, 0x7f02021e

    .line 305
    goto :goto_2

    .line 307
    :pswitch_15
    const v3, 0x7f020223

    .line 308
    goto/16 :goto_2

    .line 310
    :pswitch_16
    const v3, 0x7f020212

    .line 311
    goto/16 :goto_2

    .line 313
    :pswitch_17
    const v3, 0x7f02020e

    .line 314
    goto/16 :goto_2

    .line 316
    :pswitch_18
    const v3, 0x7f02020a

    .line 317
    goto/16 :goto_2

    .line 319
    :pswitch_19
    const v3, 0x7f02021a

    .line 320
    goto/16 :goto_2

    .line 322
    :pswitch_1a
    const v3, 0x7f020202

    .line 323
    goto/16 :goto_2

    .line 331
    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v5, :cond_6

    .line 332
    packed-switch v4, :pswitch_data_3

    .line 349
    const v3, 0x7f0201ea

    .line 350
    goto/16 :goto_2

    .line 334
    :pswitch_1b
    const v3, 0x7f0201ea

    .line 335
    goto/16 :goto_2

    .line 337
    :pswitch_1c
    const v3, 0x7f0201f2

    .line 338
    goto/16 :goto_2

    .line 340
    :pswitch_1d
    const v3, 0x7f020204

    .line 341
    goto/16 :goto_2

    .line 343
    :pswitch_1e
    const v3, 0x7f020214

    .line 344
    goto/16 :goto_2

    .line 346
    :pswitch_1f
    const v3, 0x7f0201fc

    .line 347
    goto/16 :goto_2

    .line 354
    :cond_6
    packed-switch v4, :pswitch_data_4

    .line 371
    const v3, 0x7f0201ed

    goto/16 :goto_2

    .line 356
    :pswitch_20
    const v3, 0x7f0201ed

    .line 357
    goto/16 :goto_2

    .line 359
    :pswitch_21
    const v3, 0x7f0201f4

    .line 360
    goto/16 :goto_2

    .line 362
    :pswitch_22
    const v3, 0x7f020207

    .line 363
    goto/16 :goto_2

    .line 365
    :pswitch_23
    const v3, 0x7f020217

    .line 366
    goto/16 :goto_2

    .line 368
    :pswitch_24
    const v3, 0x7f0201ff

    .line 369
    goto/16 :goto_2

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 263
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 296
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 332
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 354
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public static getCallSimIconDim(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 381
    move-object v0, p0

    .line 382
    .local v0, "mContext":Landroid/content/Context;
    const/4 v3, 0x0

    .line 383
    .local v3, "simIconIdx":I
    const/4 v2, 0x0

    .line 384
    .local v2, "simIcon":I
    const/4 v1, 0x0

    .line 386
    .local v1, "mOneHandOnOff":Z
    const-string v6, "feature_one_hand_support "

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v1, v4

    .line 390
    :cond_0
    :goto_0
    if-ne p1, v4, :cond_2

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "select_icon_2"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 396
    :goto_1
    const-string v5, "DialerTabDualSIM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCallSimIconDim simIconIdx : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v5, "number_of_select_icon_is_9"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 399
    const-string v5, "feature_one_hand_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v1, v4, :cond_3

    .line 400
    packed-switch v3, :pswitch_data_0

    .line 429
    const v2, 0x7f0202fb

    .line 550
    :goto_2
    return v2

    :cond_1
    move v1, v5

    .line 387
    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 402
    :pswitch_0
    const v2, 0x7f0202fb

    .line 403
    goto :goto_2

    .line 405
    :pswitch_1
    const v2, 0x7f0202fd

    .line 406
    goto :goto_2

    .line 408
    :pswitch_2
    const v2, 0x7f020309

    .line 409
    goto :goto_2

    .line 411
    :pswitch_3
    const v2, 0x7f02030b

    .line 412
    goto :goto_2

    .line 414
    :pswitch_4
    const v2, 0x7f020305

    .line 415
    goto :goto_2

    .line 417
    :pswitch_5
    const v2, 0x7f020303

    .line 418
    goto :goto_2

    .line 420
    :pswitch_6
    const v2, 0x7f020301

    .line 421
    goto :goto_2

    .line 423
    :pswitch_7
    const v2, 0x7f020307

    .line 424
    goto :goto_2

    .line 426
    :pswitch_8
    const v2, 0x7f0202ff

    .line 427
    goto :goto_2

    .line 434
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_4

    .line 435
    packed-switch v3, :pswitch_data_1

    .line 464
    const v2, 0x7f0201ec

    .line 465
    goto :goto_2

    .line 437
    :pswitch_9
    const v2, 0x7f0201ec

    .line 438
    goto :goto_2

    .line 440
    :pswitch_a
    const v2, 0x7f0201f3

    .line 441
    goto :goto_2

    .line 443
    :pswitch_b
    const v2, 0x7f02021c

    .line 444
    goto :goto_2

    .line 446
    :pswitch_c
    const v2, 0x7f020221

    .line 447
    goto :goto_2

    .line 449
    :pswitch_d
    const v2, 0x7f020210

    .line 450
    goto :goto_2

    .line 452
    :pswitch_e
    const v2, 0x7f02020c

    .line 453
    goto :goto_2

    .line 455
    :pswitch_f
    const v2, 0x7f020206

    .line 456
    goto :goto_2

    .line 458
    :pswitch_10
    const v2, 0x7f020216

    .line 459
    goto :goto_2

    .line 461
    :pswitch_11
    const v2, 0x7f0201fe

    .line 462
    goto :goto_2

    .line 468
    :cond_4
    packed-switch v3, :pswitch_data_2

    .line 497
    const v2, 0x7f0201ef

    .line 498
    goto :goto_2

    .line 470
    :pswitch_12
    const v2, 0x7f0201ef

    .line 471
    goto :goto_2

    .line 473
    :pswitch_13
    const v2, 0x7f0201f5

    .line 474
    goto :goto_2

    .line 476
    :pswitch_14
    const v2, 0x7f02021d

    .line 477
    goto :goto_2

    .line 479
    :pswitch_15
    const v2, 0x7f020222

    .line 480
    goto :goto_2

    .line 482
    :pswitch_16
    const v2, 0x7f020211

    .line 483
    goto/16 :goto_2

    .line 485
    :pswitch_17
    const v2, 0x7f02020d

    .line 486
    goto/16 :goto_2

    .line 488
    :pswitch_18
    const v2, 0x7f020209

    .line 489
    goto/16 :goto_2

    .line 491
    :pswitch_19
    const v2, 0x7f020219

    .line 492
    goto/16 :goto_2

    .line 494
    :pswitch_1a
    const v2, 0x7f020201

    .line 495
    goto/16 :goto_2

    .line 503
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_6

    .line 504
    packed-switch v3, :pswitch_data_3

    .line 522
    const v2, 0x7f0201eb

    .line 523
    goto/16 :goto_2

    .line 506
    :pswitch_1b
    const v2, 0x7f0201eb

    .line 507
    goto/16 :goto_2

    .line 509
    :pswitch_1c
    const v2, 0x7f020226

    .line 510
    goto/16 :goto_2

    .line 512
    :pswitch_1d
    const v2, 0x7f020205

    .line 513
    goto/16 :goto_2

    .line 515
    :pswitch_1e
    const v2, 0x7f020215

    .line 516
    goto/16 :goto_2

    .line 518
    :pswitch_1f
    const v2, 0x7f0201fd

    .line 519
    goto/16 :goto_2

    .line 527
    :cond_6
    packed-switch v3, :pswitch_data_4

    .line 545
    const v2, 0x7f0201ee

    goto/16 :goto_2

    .line 529
    :pswitch_20
    const v2, 0x7f0201ee

    .line 530
    goto/16 :goto_2

    .line 532
    :pswitch_21
    const v2, 0x7f020227

    .line 533
    goto/16 :goto_2

    .line 535
    :pswitch_22
    const v2, 0x7f020208

    .line 536
    goto/16 :goto_2

    .line 538
    :pswitch_23
    const v2, 0x7f020218

    .line 539
    goto/16 :goto_2

    .line 541
    :pswitch_24
    const v2, 0x7f020200

    .line 542
    goto/16 :goto_2

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 435
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 468
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 504
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 527
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public static getDetailSimIcon(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    .line 1100
    move-object v1, p0

    .line 1101
    .local v1, "mContext":Landroid/content/Context;
    const/4 v3, 0x0

    .line 1102
    .local v3, "simIconIdx":I
    const/4 v2, 0x0

    .line 1105
    .local v2, "simIcon":I
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 1106
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 1114
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 1131
    const v2, 0x7f0202ab

    .line 1134
    :goto_1
    return v2

    .line 1108
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1116
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v2, 0x7f0202ba

    .line 1117
    goto :goto_1

    .line 1119
    :pswitch_1
    const v2, 0x7f0202bc

    .line 1120
    goto :goto_1

    .line 1122
    :pswitch_2
    const v2, 0x7f0202ae

    .line 1123
    goto :goto_1

    .line 1125
    :pswitch_3
    const v2, 0x7f0202b7

    .line 1126
    goto :goto_1

    .line 1128
    :pswitch_4
    const v2, 0x7f0202ac

    .line 1129
    goto :goto_1

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getDuosCallSimIcon(Landroid/content/Context;IZ)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I
    .param p2, "detailview"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 557
    move-object v3, p0

    .line 558
    .local v3, "mContext":Landroid/content/Context;
    const/4 v1, 0x0

    .line 559
    .local v1, "iconIndexCDMA":I
    const/4 v2, 0x1

    .line 560
    .local v2, "iconIndexGSM":I
    move v4, p2

    .line 561
    .local v4, "mDetailView":Z
    const/4 v6, 0x0

    .line 562
    .local v6, "mOneHandOnOff":Z
    const/4 v5, 0x0

    .line 565
    .local v5, "mEasyModeOnOff":Z
    const/4 v7, 0x1

    .line 567
    .local v7, "nIndex":I
    const-string v11, "number_of_select_icon_is_9"

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 568
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getDuosCallSimIcon_V2(Landroid/content/Context;IZ)I

    move-result v0

    .line 806
    :goto_0
    return v0

    .line 571
    :cond_0
    const-string v11, "feature_one_hand_support "

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 572
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_4

    move v6, v9

    .line 575
    :cond_1
    :goto_1
    const-string v11, "feature_easy_mode"

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-boolean v11, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v11, :cond_2

    .line 576
    const/4 v5, 0x1

    .line 579
    :cond_2
    const-string v11, "feature_chn_duos_cdma_gsm"

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 580
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "switching.slot"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 582
    .local v8, "slotSwitching":I
    const-string v10, "feature_chn_duos_support_cgg"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    if-ne v8, v9, :cond_5

    .line 583
    const-string v10, "gsm.sim.icon.dual"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 607
    .end local v8    # "slotSwitching":I
    :cond_3
    :goto_2
    const-string v10, "DialerTabDualSIM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDuosCallSimIcon, simId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", nIndex : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    if-nez v4, :cond_b

    if-ne v5, v9, :cond_b

    .line 609
    packed-switch v7, :pswitch_data_0

    .line 638
    const v0, 0x7f0205a5

    .line 639
    .local v0, "Image":I
    goto :goto_0

    .end local v0    # "Image":I
    :cond_4
    move v6, v10

    .line 572
    goto :goto_1

    .line 585
    .restart local v8    # "slotSwitching":I
    :cond_5
    if-ne p1, v9, :cond_7

    .line 586
    const-string v10, "ril.ICC_TYPE"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6

    .line 587
    move v7, v1

    goto :goto_2

    .line 589
    :cond_6
    const-string v10, "gsm.sim.icon"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 592
    :cond_7
    const-string v10, "ril.ICC_TYPE2"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_8

    .line 593
    move v7, v2

    goto :goto_2

    .line 595
    :cond_8
    const-string v10, "gsm.sim.icon2"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 598
    .end local v8    # "slotSwitching":I
    :cond_9
    const-string v11, "feature_chn_duos_gsm_gsm"

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 599
    if-ne p1, v9, :cond_a

    .line 600
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "select_icon_1"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 601
    const-string v10, "DialerTabDualSIM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sim1 Icon nIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 603
    :cond_a
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "select_icon_2"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 604
    const-string v10, "DialerTabDualSIM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sim2 Icon nIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 611
    :pswitch_0
    const v0, 0x7f0205a5

    .line 612
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 614
    .end local v0    # "Image":I
    :pswitch_1
    const v0, 0x7f0205a9

    .line 615
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 617
    .end local v0    # "Image":I
    :pswitch_2
    const v0, 0x7f0205b2

    .line 618
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 620
    .end local v0    # "Image":I
    :pswitch_3
    const v0, 0x7f0205ba

    .line 621
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 623
    .end local v0    # "Image":I
    :pswitch_4
    const v0, 0x7f0205ae

    .line 624
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 626
    .end local v0    # "Image":I
    :pswitch_5
    const v0, 0x7f0205c2

    .line 627
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 629
    .end local v0    # "Image":I
    :pswitch_6
    const v0, 0x7f0205a1

    .line 630
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 632
    .end local v0    # "Image":I
    :pswitch_7
    const v0, 0x7f0205a4

    .line 633
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 635
    .end local v0    # "Image":I
    :pswitch_8
    const v0, 0x7f0205a3

    .line 636
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 641
    .end local v0    # "Image":I
    :cond_b
    if-nez v4, :cond_d

    if-nez v6, :cond_d

    .line 642
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v9, :cond_c

    .line 643
    packed-switch v7, :pswitch_data_1

    .line 672
    const v0, 0x7f0201ea

    .line 673
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 645
    .end local v0    # "Image":I
    :pswitch_9
    const v0, 0x7f0201ea

    .line 646
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 648
    .end local v0    # "Image":I
    :pswitch_a
    const v0, 0x7f0201f2

    .line 649
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 651
    .end local v0    # "Image":I
    :pswitch_b
    const v0, 0x7f020204

    .line 652
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 654
    .end local v0    # "Image":I
    :pswitch_c
    const v0, 0x7f020214

    .line 655
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 657
    .end local v0    # "Image":I
    :pswitch_d
    const v0, 0x7f0201fc

    .line 658
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 660
    .end local v0    # "Image":I
    :pswitch_e
    const v0, 0x7f020225

    .line 661
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 663
    .end local v0    # "Image":I
    :pswitch_f
    const v0, 0x7f0201e4

    .line 664
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 666
    .end local v0    # "Image":I
    :pswitch_10
    const v0, 0x7f0201e9

    .line 667
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 669
    .end local v0    # "Image":I
    :pswitch_11
    const v0, 0x7f0201e7

    .line 670
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 676
    .end local v0    # "Image":I
    :cond_c
    packed-switch v7, :pswitch_data_2

    .line 705
    const v0, 0x7f0201ed

    .line 706
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 678
    .end local v0    # "Image":I
    :pswitch_12
    const v0, 0x7f0201ed

    .line 679
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 681
    .end local v0    # "Image":I
    :pswitch_13
    const v0, 0x7f0201f4

    .line 682
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 684
    .end local v0    # "Image":I
    :pswitch_14
    const v0, 0x7f020207

    .line 685
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 687
    .end local v0    # "Image":I
    :pswitch_15
    const v0, 0x7f020217

    .line 688
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 690
    .end local v0    # "Image":I
    :pswitch_16
    const v0, 0x7f0201ff

    .line 691
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 693
    .end local v0    # "Image":I
    :pswitch_17
    const v0, 0x7f020228

    .line 694
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 696
    .end local v0    # "Image":I
    :pswitch_18
    const v0, 0x7f0201e5

    .line 697
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 699
    .end local v0    # "Image":I
    :pswitch_19
    const v0, 0x7f0201f8

    .line 700
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 702
    .end local v0    # "Image":I
    :pswitch_1a
    const v0, 0x7f0201e8

    .line 703
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 709
    .end local v0    # "Image":I
    :cond_d
    if-nez v4, :cond_e

    if-ne v6, v9, :cond_e

    .line 710
    packed-switch v7, :pswitch_data_3

    .line 736
    const v0, 0x7f0202fa

    .line 737
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 712
    .end local v0    # "Image":I
    :pswitch_1b
    const v0, 0x7f0202fa

    .line 713
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 715
    .end local v0    # "Image":I
    :pswitch_1c
    const v0, 0x7f0202fc

    .line 716
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 718
    .end local v0    # "Image":I
    :pswitch_1d
    const v0, 0x7f020300

    .line 719
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 721
    .end local v0    # "Image":I
    :pswitch_1e
    const v0, 0x7f020306

    .line 722
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 724
    .end local v0    # "Image":I
    :pswitch_1f
    const v0, 0x7f0202fe

    .line 725
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 727
    .end local v0    # "Image":I
    :pswitch_20
    const v0, 0x7f02030c

    .line 728
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 730
    .end local v0    # "Image":I
    :pswitch_21
    const v0, 0x7f0202f8

    .line 731
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 733
    .end local v0    # "Image":I
    :pswitch_22
    const v0, 0x7f0202f9

    .line 734
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 739
    .end local v0    # "Image":I
    :cond_e
    if-ne v4, v9, :cond_f

    if-ne v5, v9, :cond_f

    .line 740
    packed-switch v7, :pswitch_data_4

    .line 769
    const v0, 0x7f020537

    .line 770
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 742
    .end local v0    # "Image":I
    :pswitch_23
    const v0, 0x7f020543

    .line 743
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 745
    .end local v0    # "Image":I
    :pswitch_24
    const v0, 0x7f020545

    .line 746
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 748
    .end local v0    # "Image":I
    :pswitch_25
    const v0, 0x7f02053a

    .line 749
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 751
    .end local v0    # "Image":I
    :pswitch_26
    const v0, 0x7f020540

    .line 752
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 754
    .end local v0    # "Image":I
    :pswitch_27
    const v0, 0x7f020538

    .line 755
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 757
    .end local v0    # "Image":I
    :pswitch_28
    const v0, 0x7f02054a

    .line 758
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 760
    .end local v0    # "Image":I
    :pswitch_29
    const v0, 0x7f020535

    .line 761
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 763
    .end local v0    # "Image":I
    :pswitch_2a
    const v0, 0x7f020537

    .line 764
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 766
    .end local v0    # "Image":I
    :pswitch_2b
    const v0, 0x7f020536

    .line 767
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 773
    .end local v0    # "Image":I
    :cond_f
    packed-switch v7, :pswitch_data_5

    .line 802
    const v0, 0x7f0202ab

    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 775
    .end local v0    # "Image":I
    :pswitch_2c
    const v0, 0x7f0202ba

    .line 776
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 778
    .end local v0    # "Image":I
    :pswitch_2d
    const v0, 0x7f0202bc

    .line 779
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 781
    .end local v0    # "Image":I
    :pswitch_2e
    const v0, 0x7f0202ae

    .line 782
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 784
    .end local v0    # "Image":I
    :pswitch_2f
    const v0, 0x7f0202b7

    .line 785
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 787
    .end local v0    # "Image":I
    :pswitch_30
    const v0, 0x7f0202ac

    .line 788
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 790
    .end local v0    # "Image":I
    :pswitch_31
    const v0, 0x7f0202c5

    .line 791
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 793
    .end local v0    # "Image":I
    :pswitch_32
    const v0, 0x7f0202a6

    .line 794
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 796
    .end local v0    # "Image":I
    :pswitch_33
    const v0, 0x7f0202ab

    .line 797
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 799
    .end local v0    # "Image":I
    :pswitch_34
    const v0, 0x7f0202aa

    .line 800
    .restart local v0    # "Image":I
    goto/16 :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 643
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 676
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 710
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch

    .line 740
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    .line 773
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch
.end method

.method public static getDuosCallSimIcon_V2(Landroid/content/Context;IZ)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I
    .param p2, "detailview"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 811
    move-object v3, p0

    .line 812
    .local v3, "mContext":Landroid/content/Context;
    const/4 v1, 0x0

    .line 813
    .local v1, "iconIndexCDMA":I
    const/4 v2, 0x1

    .line 814
    .local v2, "iconIndexGSM":I
    move v4, p2

    .line 815
    .local v4, "mDetailView":Z
    const/4 v6, 0x0

    .line 816
    .local v6, "mOneHandOnOff":Z
    const/4 v5, 0x0

    .line 819
    .local v5, "mEasyModeOnOff":Z
    const/4 v7, 0x1

    .line 821
    .local v7, "nIndex":I
    const-string v11, "feature_one_hand_support "

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 822
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_3

    move v6, v9

    .line 825
    :cond_0
    :goto_0
    const-string v11, "feature_easy_mode"

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v11, :cond_1

    .line 826
    const/4 v5, 0x1

    .line 829
    :cond_1
    const-string v11, "feature_chn_duos_cdma_gsm"

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 830
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "switching.slot"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 832
    .local v8, "slotSwitching":I
    const-string v10, "feature_chn_duos_support_cgg"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    if-ne v8, v9, :cond_4

    .line 833
    const-string v10, "gsm.sim.icon.dual"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 857
    .end local v8    # "slotSwitching":I
    :cond_2
    :goto_1
    const-string v10, "DialerTabDualSIM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDuosCallSimIcon, simId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", nIndex : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    if-nez v4, :cond_b

    if-ne v5, v9, :cond_b

    .line 859
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v9, :cond_a

    .line 860
    packed-switch v7, :pswitch_data_0

    .line 889
    const v0, 0x7f0205a8

    .line 1094
    .local v0, "Image":I
    :goto_2
    return v0

    .end local v0    # "Image":I
    :cond_3
    move v6, v10

    .line 822
    goto :goto_0

    .line 835
    .restart local v8    # "slotSwitching":I
    :cond_4
    if-ne p1, v9, :cond_6

    .line 836
    const-string v10, "ril.ICC_TYPE"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_5

    .line 837
    move v7, v1

    goto :goto_1

    .line 839
    :cond_5
    const-string v10, "gsm.sim.icon"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    .line 842
    :cond_6
    const-string v10, "ril.ICC_TYPE2"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_7

    .line 843
    move v7, v2

    goto :goto_1

    .line 845
    :cond_7
    const-string v10, "gsm.sim.icon2"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    .line 848
    .end local v8    # "slotSwitching":I
    :cond_8
    const-string v11, "feature_chn_duos_gsm_gsm"

    invoke-static {v11}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 849
    if-ne p1, v9, :cond_9

    .line 850
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "select_icon_1"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 851
    const-string v10, "DialerTabDualSIM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sim1 Icon nIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 853
    :cond_9
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "select_icon_2"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 854
    const-string v10, "DialerTabDualSIM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sim2 Icon nIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 862
    :pswitch_0
    const v0, 0x7f0205a8

    .line 863
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 865
    .end local v0    # "Image":I
    :pswitch_1
    const v0, 0x7f0205ac

    .line 866
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 868
    .end local v0    # "Image":I
    :pswitch_2
    const v0, 0x7f0205bf

    .line 869
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 871
    .end local v0    # "Image":I
    :pswitch_3
    const v0, 0x7f0205c1

    .line 872
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 874
    .end local v0    # "Image":I
    :pswitch_4
    const v0, 0x7f0205b9

    .line 875
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 877
    .end local v0    # "Image":I
    :pswitch_5
    const v0, 0x7f0205b7

    .line 878
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 880
    .end local v0    # "Image":I
    :pswitch_6
    const v0, 0x7f0205b5

    .line 881
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 883
    .end local v0    # "Image":I
    :pswitch_7
    const v0, 0x7f0205bd

    .line 884
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 886
    .end local v0    # "Image":I
    :pswitch_8
    const v0, 0x7f0205b1

    .line 887
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 893
    .end local v0    # "Image":I
    :cond_a
    packed-switch v7, :pswitch_data_1

    .line 922
    const v0, 0x7f0205a7

    .line 923
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 895
    .end local v0    # "Image":I
    :pswitch_9
    const v0, 0x7f0205a7

    .line 896
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 898
    .end local v0    # "Image":I
    :pswitch_a
    const v0, 0x7f0205ab

    .line 899
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 901
    .end local v0    # "Image":I
    :pswitch_b
    const v0, 0x7f0205be

    .line 902
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 904
    .end local v0    # "Image":I
    :pswitch_c
    const v0, 0x7f0205c0

    .line 905
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 907
    .end local v0    # "Image":I
    :pswitch_d
    const v0, 0x7f0205b8

    .line 908
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 910
    .end local v0    # "Image":I
    :pswitch_e
    const v0, 0x7f0205b6

    .line 911
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 913
    .end local v0    # "Image":I
    :pswitch_f
    const v0, 0x7f0205b4

    .line 914
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 916
    .end local v0    # "Image":I
    :pswitch_10
    const v0, 0x7f0205bc

    .line 917
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 919
    .end local v0    # "Image":I
    :pswitch_11
    const v0, 0x7f0205b0

    .line 920
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 926
    .end local v0    # "Image":I
    :cond_b
    if-nez v4, :cond_d

    if-nez v6, :cond_d

    .line 927
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v9, :cond_c

    .line 928
    packed-switch v7, :pswitch_data_2

    .line 957
    const v0, 0x7f0201f1

    .line 958
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 930
    .end local v0    # "Image":I
    :pswitch_12
    const v0, 0x7f0201f1

    .line 931
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 933
    .end local v0    # "Image":I
    :pswitch_13
    const v0, 0x7f0201f7

    .line 934
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 936
    .end local v0    # "Image":I
    :pswitch_14
    const v0, 0x7f02021f

    .line 937
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 939
    .end local v0    # "Image":I
    :pswitch_15
    const v0, 0x7f020224

    .line 940
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 942
    .end local v0    # "Image":I
    :pswitch_16
    const v0, 0x7f020213

    .line 943
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 945
    .end local v0    # "Image":I
    :pswitch_17
    const v0, 0x7f02020f

    .line 946
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 948
    .end local v0    # "Image":I
    :pswitch_18
    const v0, 0x7f02020b

    .line 949
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 951
    .end local v0    # "Image":I
    :pswitch_19
    const v0, 0x7f02021b

    .line 952
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 954
    .end local v0    # "Image":I
    :pswitch_1a
    const v0, 0x7f020203

    .line 955
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 961
    .end local v0    # "Image":I
    :cond_c
    packed-switch v7, :pswitch_data_3

    .line 990
    const v0, 0x7f0201f0

    .line 991
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 963
    .end local v0    # "Image":I
    :pswitch_1b
    const v0, 0x7f0201f0

    .line 964
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 966
    .end local v0    # "Image":I
    :pswitch_1c
    const v0, 0x7f0201f6

    .line 967
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 969
    .end local v0    # "Image":I
    :pswitch_1d
    const v0, 0x7f02021e

    .line 970
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 972
    .end local v0    # "Image":I
    :pswitch_1e
    const v0, 0x7f020223

    .line 973
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 975
    .end local v0    # "Image":I
    :pswitch_1f
    const v0, 0x7f020212

    .line 976
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 978
    .end local v0    # "Image":I
    :pswitch_20
    const v0, 0x7f02020e

    .line 979
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 981
    .end local v0    # "Image":I
    :pswitch_21
    const v0, 0x7f02020a

    .line 982
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 984
    .end local v0    # "Image":I
    :pswitch_22
    const v0, 0x7f02021a

    .line 985
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 987
    .end local v0    # "Image":I
    :pswitch_23
    const v0, 0x7f020202

    .line 988
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 994
    .end local v0    # "Image":I
    :cond_d
    if-nez v4, :cond_e

    if-ne v6, v9, :cond_e

    .line 995
    packed-switch v7, :pswitch_data_4

    .line 1024
    const v0, 0x7f0202fa

    .line 1025
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 997
    .end local v0    # "Image":I
    :pswitch_24
    const v0, 0x7f0202fa

    .line 998
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1000
    .end local v0    # "Image":I
    :pswitch_25
    const v0, 0x7f0202fc

    .line 1001
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1003
    .end local v0    # "Image":I
    :pswitch_26
    const v0, 0x7f020308

    .line 1004
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1006
    .end local v0    # "Image":I
    :pswitch_27
    const v0, 0x7f02030a

    .line 1007
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1009
    .end local v0    # "Image":I
    :pswitch_28
    const v0, 0x7f020304

    .line 1010
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1012
    .end local v0    # "Image":I
    :pswitch_29
    const v0, 0x7f020302

    .line 1013
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1015
    .end local v0    # "Image":I
    :pswitch_2a
    const v0, 0x7f020300

    .line 1016
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1018
    .end local v0    # "Image":I
    :pswitch_2b
    const v0, 0x7f020306

    .line 1019
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1021
    .end local v0    # "Image":I
    :pswitch_2c
    const v0, 0x7f0202fe

    .line 1022
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1027
    .end local v0    # "Image":I
    :cond_e
    if-ne v4, v9, :cond_f

    if-ne v5, v9, :cond_f

    .line 1028
    packed-switch v7, :pswitch_data_5

    .line 1057
    const v0, 0x7f020544

    .line 1058
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1030
    .end local v0    # "Image":I
    :pswitch_2d
    const v0, 0x7f020544

    .line 1031
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1033
    .end local v0    # "Image":I
    :pswitch_2e
    const v0, 0x7f020546

    .line 1034
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1036
    .end local v0    # "Image":I
    :pswitch_2f
    const v0, 0x7f020542

    .line 1037
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1039
    .end local v0    # "Image":I
    :pswitch_30
    const v0, 0x7f020547

    .line 1040
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1042
    .end local v0    # "Image":I
    :pswitch_31
    const v0, 0x7f02053f

    .line 1043
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1045
    .end local v0    # "Image":I
    :pswitch_32
    const v0, 0x7f02053c

    .line 1046
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1048
    .end local v0    # "Image":I
    :pswitch_33
    const v0, 0x7f02053b

    .line 1049
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1051
    .end local v0    # "Image":I
    :pswitch_34
    const v0, 0x7f020541

    .line 1052
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1054
    .end local v0    # "Image":I
    :pswitch_35
    const v0, 0x7f020539

    .line 1055
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1061
    .end local v0    # "Image":I
    :cond_f
    packed-switch v7, :pswitch_data_6

    .line 1090
    const v0, 0x7f0202bb

    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1063
    .end local v0    # "Image":I
    :pswitch_36
    const v0, 0x7f0202bb

    .line 1064
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1066
    .end local v0    # "Image":I
    :pswitch_37
    const v0, 0x7f0202bd

    .line 1067
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1069
    .end local v0    # "Image":I
    :pswitch_38
    const v0, 0x7f0202b9

    .line 1070
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1072
    .end local v0    # "Image":I
    :pswitch_39
    const v0, 0x7f0202be

    .line 1073
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1075
    .end local v0    # "Image":I
    :pswitch_3a
    const v0, 0x7f0202b6

    .line 1076
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1078
    .end local v0    # "Image":I
    :pswitch_3b
    const v0, 0x7f0202b0

    .line 1079
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1081
    .end local v0    # "Image":I
    :pswitch_3c
    const v0, 0x7f0202af

    .line 1082
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1084
    .end local v0    # "Image":I
    :pswitch_3d
    const v0, 0x7f0202b8

    .line 1085
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 1087
    .end local v0    # "Image":I
    :pswitch_3e
    const v0, 0x7f0202ad

    .line 1088
    .restart local v0    # "Image":I
    goto/16 :goto_2

    .line 860
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 893
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 928
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 961
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    .line 995
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
    .end packed-switch

    .line 1028
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
    .end packed-switch

    .line 1061
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
    .end packed-switch
.end method

.method public static getSimIcon(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    .line 64
    move-object v1, p0

    .line 65
    .local v1, "mContext":Landroid/content/Context;
    const/4 v3, 0x0

    .line 66
    .local v3, "simIconIdx":I
    const/4 v2, 0x0

    .line 69
    .local v2, "simIcon":I
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 78
    :goto_0
    const-string v4, "number_of_select_icon_is_9"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    packed-switch v3, :pswitch_data_0

    .line 108
    const v2, 0x7f020528

    .line 134
    :goto_1
    return v2

    .line 72
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v2, 0x7f020528

    .line 82
    goto :goto_1

    .line 84
    :pswitch_1
    const v2, 0x7f020529

    .line 85
    goto :goto_1

    .line 87
    :pswitch_2
    const v2, 0x7f02052a

    .line 88
    goto :goto_1

    .line 90
    :pswitch_3
    const v2, 0x7f020530

    .line 91
    goto :goto_1

    .line 93
    :pswitch_4
    const v2, 0x7f02052e

    .line 94
    goto :goto_1

    .line 96
    :pswitch_5
    const v2, 0x7f02052d

    .line 97
    goto :goto_1

    .line 99
    :pswitch_6
    const v2, 0x7f02052c

    .line 100
    goto :goto_1

    .line 102
    :pswitch_7
    const v2, 0x7f02052f

    .line 103
    goto :goto_1

    .line 105
    :pswitch_8
    const v2, 0x7f02052b

    .line 106
    goto :goto_1

    .line 112
    :cond_1
    packed-switch v3, :pswitch_data_1

    .line 129
    const v2, 0x7f020824

    goto :goto_1

    .line 114
    :pswitch_9
    const v2, 0x7f020824

    .line 115
    goto :goto_1

    .line 117
    :pswitch_a
    const v2, 0x7f020827

    .line 118
    goto :goto_1

    .line 120
    :pswitch_b
    const v2, 0x7f020831

    .line 121
    goto :goto_1

    .line 123
    :pswitch_c
    const v2, 0x7f02083f

    .line 124
    goto :goto_1

    .line 126
    :pswitch_d
    const v2, 0x7f02082b

    .line 127
    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 112
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    .line 51
    move-object v0, p0

    .line 52
    .local v0, "mContext":Landroid/content/Context;
    const/4 v1, 0x0

    .line 54
    .local v1, "simName":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTabSimIcon(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    const/4 v5, 0x1

    .line 138
    move-object v0, p0

    .line 139
    .local v0, "mContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 140
    .local v2, "simIconIdx":I
    const/4 v1, 0x0

    .line 141
    .local v1, "simIcon":I
    if-ne p1, v5, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 146
    :goto_0
    const-string v3, "number_of_select_icon_is_9"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    packed-switch v2, :pswitch_data_0

    .line 176
    const v1, 0x7f020816

    .line 202
    :goto_1
    return v1

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 149
    :pswitch_0
    const v1, 0x7f020816

    .line 150
    goto :goto_1

    .line 152
    :pswitch_1
    const v1, 0x7f020817

    .line 153
    goto :goto_1

    .line 155
    :pswitch_2
    const v1, 0x7f020818

    .line 156
    goto :goto_1

    .line 158
    :pswitch_3
    const v1, 0x7f020844

    .line 159
    goto :goto_1

    .line 161
    :pswitch_4
    const v1, 0x7f02083a

    .line 162
    goto :goto_1

    .line 164
    :pswitch_5
    const v1, 0x7f020836

    .line 165
    goto :goto_1

    .line 167
    :pswitch_6
    const v1, 0x7f020834

    .line 168
    goto :goto_1

    .line 170
    :pswitch_7
    const v1, 0x7f020842

    .line 171
    goto :goto_1

    .line 173
    :pswitch_8
    const v1, 0x7f02082e

    .line 174
    goto :goto_1

    .line 180
    :cond_1
    packed-switch v2, :pswitch_data_1

    .line 197
    const v1, 0x7f020824

    goto :goto_1

    .line 182
    :pswitch_9
    const v1, 0x7f020824

    .line 183
    goto :goto_1

    .line 185
    :pswitch_a
    const v1, 0x7f020827

    .line 186
    goto :goto_1

    .line 188
    :pswitch_b
    const v1, 0x7f020831

    .line 189
    goto :goto_1

    .line 191
    :pswitch_c
    const v1, 0x7f02083f

    .line 192
    goto :goto_1

    .line 194
    :pswitch_d
    const v1, 0x7f02082b

    .line 195
    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static isDuringACall(I)Z
    .locals 6
    .param p0, "simId"    # I

    .prologue
    const/4 v2, 0x0

    .line 30
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 31
    .local v1, "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v0, 0x0

    .line 32
    .local v0, "currSimId":I
    const-string v3, "feature_common_use_multisim"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v0

    .line 38
    :goto_0
    const-string v3, "DialerTabDualSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currSimId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), passedSimID("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    if-eq v0, p0, :cond_2

    .line 47
    .end local v0    # "currSimId":I
    .end local v1    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    return v2

    .line 35
    .restart local v0    # "currSimId":I
    .restart local v1    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    invoke-static {}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v0

    goto :goto_0

    .line 42
    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const/4 v2, 0x1

    goto :goto_1

    .line 45
    .end local v0    # "currSimId":I
    .end local v1    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
