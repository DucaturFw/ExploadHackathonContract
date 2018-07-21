using System;
using Com.Expload;

[Program]
class MyProgram
{
    private int get_suit(int card)
    {
        // 0 = spades
        // 1 = clubs
        // 2 = hearts
        // 3 = diamonds
        return card - (card % 20);
    }
    private int get_value(int card)
    {
        // 0 = 2
        // 1 = 3
        // ...
        // 8 = 10
        // 9 = J
        // 10 = Q
        // 11 = K
        // 12 = A
        return card % 20;
    }
    private int CARD_VAL_2 = 0;
    private int CARD_VAL_A = 12;

    /* private int[] sort_cards(int[] cards, int len)
    {
        int temp = 0;
        for (int write = 0; write < len; write++)
        {
            for (int sort = 0; sort < len - 1; sort++)
            {
                int val1 = get_value(cards[sort]);
                int val2 = get_value(cards[sort + 1]);
                if (val1 > val2)
                {
                    temp = cards[sort + 1];
                    cards[sort + 1] = cards[sort];
                    cards[sort] = temp;
                }
            }
        }

        return cards;
    } */
    private byte[] card_combinations = new byte[] {
        31, 47, 79, 55, 87, 103, 59, 91, 107, 115, 61, 93, 109, 117, 121, 62, 94, 110, 118, 122, 124
    };
    private int has_flag(int b1, int b2)
    {
        return (b1 / b2) % 2;
    }
    private int[] select_combination(int[] cards, byte comb)
    {
        int[] select = new int[]{0,0,0,0,0};
        int i = 0;
        if (has_flag(comb, 1) > 0)
            select[i++] = cards[0];
        if (has_flag(comb, 2) > 0)
            select[i++] = cards[1];
        if (has_flag(comb, 4) > 0)
            select[i++] = cards[2];
        if (has_flag(comb, 8) > 0)
            select[i++] = cards[3];
        if (has_flag(comb, 16) > 0)
            select[i++] = cards[4];
        if (has_flag(comb, 32) > 0)
            select[i++] = cards[5];
        if (has_flag(comb, 64) > 0)
            select[i++] = cards[6];
        
        return select;
    }
    public int get_highest_combination(int c0, int c1, int c2, int c3, int c4, int c5, int c6)
    {
        int[] cards = new int[]{c0,c1,c2,c3,c4,c5,c6};
        int max = 0;
        for (int i = 0; i < 21; i++)
        {
            int[] combination = select_combination(cards, card_combinations[i]);
            int val = _get_combination_value(combination[0], combination[1], combination[2], combination[3], combination[4]);
            if (val > max)
                max = val;
        }
        return max;
    }
    public int get_combination_value(int c0, int c1, int c2, int c3, int c4)
    {
        return _get_combination_value(c0, c1, c2, c3, c4);
    }
    private int _get_combination_value(int c0, int c1, int c2, int c3, int c4)
    {
        // if (isRoyalFlush(cards)) // royal flush doesn't mean shit because it's just a straight flush with highest card Ace
        //     return 65000;
        
        int cv0 = get_value(c0);
        int cv1 = get_value(c1);
        int cv2 = get_value(c2);
        int cv3 = get_value(c3);
        int cv4 = get_value(c4);

        // Straight flushes
        if (isStraightFlush(c0, c1, c2, c3, c4, cv0, cv1, cv2, cv3, cv4))
            return 1000000
                + cv0 // orders straight flushes on highest card value (2,J,Q,K,A loses to 2,3,4,5,6)
            ;
        
        // Four of a kind
        // 5,A,A,A,A
        // K,A,A,A,A
        // 6,6,6,6,Q
        // 6,6,6,6,A
        if (isFourOfAKind(cv0, cv1, cv2, cv3, cv4))
            return 900000
                + 1000 * (cv2 + 1) // get one middle card (there's four of them)
                + (cv0 + cv4 - cv2) // kicker
            ;

        // Full Houses
        if (isFullHouse(cv0, cv1, cv2, cv3, cv4))
            return 800000
                + 1000 * (cv2 + 1) // get one middle card (it will always be the one we have 3 of)
                + (cv0 + cv4 - cv2) // this will be the one we have only 2 of
            ;
        
        // Flushes
        if (isFlush(c0, c1, c2, c3, c4))
            return 700000
                + 5 * cv4 // kickers
                + 4 * cv3
                + 3 * cv2
                + 2 * cv1
                + 1 * cv0
            ;
        
        // Straights
        if (isStraight(cv0, cv1, cv2, cv3, cv4))
            return 600000
                + cv4 // highest card
            ;
        
        // Three of a kind
        if (isThreeOfAKind(cv0, cv1, cv2, cv3, cv4))
            return 500000
                + 1000 * (cv2 + 1) // get one middle card (it will always be the one we have 3 of)
                + 5 * cv4 // kickers (their score will always be lower than main card, but will still help decide)
                + 4 * cv3
                + 3 * cv2
                + 2 * cv1
                + 1 * cv0
            ;

        // Two pair
        if (isTwoPairs(cv0, cv1, cv2, cv3, cv4))
            return 400000
                + 1000 * (cv3 + 1) // highest pair
                + 50 * (cv1 + 1) // lowest pair
                + (cv0 + cv2 + cv4 - cv1 - cv3) // voodoo magic! (calculating the kicker)
            ;
        // Pairs
        if (isPair(cv0, cv1, cv2, cv3, cv4))
            return 300000
                + getPairCoef(cv0, cv1, cv2, cv3, cv4)
            ;

        // High cards by rank
        return 5 * cv4 + 4 * cv3 + 3 * cv2 + 2 * cv1 + cv0;
    }
    private int getPairCoef(int c0, int c1, int c2, int c3, int c4)
    {
        if (c0 == c1)
            return 1000 * (c0 + 1) + 5 * c4 + 4 * c3 + 3 * c2;
        if (c1 == c2)
            return 1000 * (c1 + 1) + 5 * c4 + 4 * c3 + 1 * c0;
        if (c2 == c3)
            return 1000 * (c2 + 1) + 5 * c4 + 2 * c1 + 1 * c0;
        if (c3 == c4)
            return 1000 * (c4 + 1) + 3 * c2 + 2 * c1 + 1 * c0;
        
        return 0;
    }


//  ######   #######  ##     ## ########   ######  
// ##    ## ##     ## ###   ### ##     ## ##    ## 
// ##       ##     ## #### #### ##     ## ##       
// ##       ##     ## ## ### ## ########   ######  
// ##       ##     ## ##     ## ##     ##       ## 
// ##    ## ##     ## ##     ## ##     ## ##    ## 
//  ######   #######  ##     ## ########   ######  


    private bool isFourOfAKind(int c0, int c1, int c2, int c3, int c4)
    {
        // optimized version (cards are sorted by value already)
        if ((c0 == c1)
            && (c0 == c2)
            && (c0 == c3))
            return true;
        
        if ((c4 == c1)
            && (c4 == c2)
            && (c4 == c3))
            return true;
        
        return false;
    }
    private bool isFullHouse(int c0, int c1, int c2, int c3, int c4)
    {
        // 5,5,9,9,9
        if ((c0 == c1) // 2 of a kind
            && (c2 == c3) && (c2 == c4)) // 3 of a kind
            return true;
        
        // 6,6,6,K,K
        if ((c0 == c1) && (c0 == c2) // 3 of a kind
            && (c3 == c4)) // 2 of a kind
            return true;
        
        return false;
    }
    private bool isFlush(int c0, int c1, int c2, int c3, int c4)
    {
        int suit = get_suit(c0);
        return (suit == get_suit(c1))
            && (suit == get_suit(c2))
            && (suit == get_suit(c3))
            && (suit == get_suit(c4))
        ;
    }
    private bool isStraightSimple(int c0, int c1, int c2, int c3, int c4)
    {
        if (c0 != (c1 - 1))
            return false;
        if (c0 != (c2 - 2))
            return false;
        if (c0 != (c3 - 3))
            return false;
        if (c0 != (c4 - 4))
            return false;
        
        return true;
    }
    private bool isStraight(int c0, int c1, int c2, int c3, int c4)
    {
        // 5,6,7,8,9
        // 2,3,4,5,A
        // 10,J,Q,K,A
        // straights can't wrap around (2,3,4,K,A is not a straight)
        if (isStraightSimple(c0, c1, c2, c3, c4))
            return true;

        if (c0 != CARD_VAL_2)
            return false;
        if (c4 != CARD_VAL_A)
            return false;
        
        if ((c1 == (c0 + 1))
            && (c2 == (c0 + 2))
            && (c3 == (c0 + 3)))
            return true;
        
        if ((c4 == (c3 + 1))
            && (c4 == (c2 + 2))
            && (c4 == (c1 + 3)))
            return true;
        
        return false;
    }
    private bool isStraightFlush(int c0, int c1, int c2, int c3, int c4, int cv0, int cv1, int cv2, int cv3, int cv4)
    {
        return isFlush(c0, c1, c2, c3, c4) && isStraight(cv0, cv1, cv2, cv3, cv4);
    }
    
    // Three of a kind
    private bool isThreeOfAKind(int c0, int c1, int c2, int c3, int c4)
    {
        if ((c0 == c1)
            && (c0 == c2))
            return true;
        
        if ((c1 == c2)
            && (c1 == c3))
            return true;
        
        if ((c2 == c3)
            && (c2 == c4))
            return true;
        
        return false;
    }
    // Two pair
    private bool isTwoPairs(int c0, int c1, int c2, int c3, int c4)
    {
        if (c0 == c1) // 2,2,3,3,4 or 2,2,3,4,4
            return ((c2 == c3) || (c3 == c4));
        
        if (c1 == c2) // 2,3,3,4,4
            return (c3 == c4);
        
        return false;
    }
    // Pairs
    private bool isPair(int c0, int c1, int c2, int c3, int c4)
    {
        return (c0 == c1) || (c1 == c2) || (c2 == c3) || (c3 == c4);
    }
}

class MainClass
{
    public static void Main() {}
}