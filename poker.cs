using System;
using Com.Expload;

[Program]
class MyProgram
{
    Mapping<Bytes, int> balances = new Mapping<Bytes, int>();

    public int balanceOf(Bytes tokenOwner)
    {
        return balances.getDefault(tokenOwner, 0);
    }

    public void transfer(Bytes to, int tokens)
    {
        if (tokens > 0)
        {
            if (balances.getDefault(Info.Sender(), 0) >= tokens)
            {
                balances.put(Info.Sender(), balances.getDefault(Info.Sender(), 0) - tokens);
                balances.put(to, balances.getDefault(to, 0) + tokens);
            }
        }
    }

    public int[] sort_kill(int[] arr, int len)
    {
        int temp = 0;
        for (int write = 0; write < len; write++)
        {
            for (int sort = 0; sort < len - 1; sort++)
            {
                if (arr[sort] > arr[sort + 1])
                {
                    temp = arr[sort + 1];
                    arr[sort + 1] = arr[sort];
                    arr[sort] = temp;
                }
            }
        }

        return arr;
    }
    public int get_suit(int card)
    {
        // 0 = spades
        // 1 = clubs
        // 2 = hearts
        // 3 = diamonds
        return card % 20;
    }
    public int get_value(int card)
    {
        // 0 = 2
        // 1 = 3
        // ...
        // 8 = 10
        // 9 = J
        // 10 = Q
        // 11 = K
        // 12 = A
        return card - (card % 20);
    }
    private int CARD_VAL_2 = 0;
    private int CARD_VAL_A = 12;

    public int[] sort_cards(int[] cards, int len)
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
    }
    public byte[] card_combinations = new byte[] {
        31, 47, 79, 55, 87, 103, 59, 91, 107, 115, 61, 93, 109, 117, 121, 62, 94, 110, 118, 122, 124
    };
    private int has_flag(int b1, int b2)
    {
        return (b1 / b2) % 2;
    }
    public int[] select_combination(int[] cards, byte comb)
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
    public int get_combination_value(int[] cards)
    {
        // if (isRoyalFlush(cards)) // royal flush doesn't mean shit because it's just a straight flush with highest card Ace
        //     return 65000;
        
        int[] cardVals = {
            get_value(cards[0]),
            get_value(cards[1]),
            get_value(cards[2]),
            get_value(cards[3]),
            get_value(cards[4])
        };

        // Straight flushes
        if (isStraightFlush(cards, cardVals))
            return 1000000
                + cardVals[0] // orders straight flushes on highest card value (2,J,Q,K,A loses to 2,3,4,5,6)
            ;
        
        // Four of a kind
        // 5,A,A,A,A
        // K,A,A,A,A
        // 6,6,6,6,Q
        // 6,6,6,6,A
        if (isFourOfAKind(cardVals))
            return 900000
                + 1000 * (cardVals[2] + 1) // get one middle card (there's four of them)
                + (cardVals[0] + cardVals[4] - cardVals[2]) // kicker
            ;

        // Full Houses
        if (isFullHouse(cardVals))
            return 800000
                + 1000 * (cardVals[2] + 1) // get one middle card (it will always be the one we have 3 of)
                + (cardVals[0] + cardVals[4] - cardVals[2]) // this will be the one we have only 2 of
            ;
        
        // Flushes
        if (isFlush(cards))
            return 700000
                + 5 * cardVals[4] // kickers
                + 4 * cardVals[3]
                + 3 * cardVals[2]
                + 2 * cardVals[1]
                + 1 * cardVals[0]
            ;
        
        // Straights
        if (isStraight(cardVals))
            return 600000
                + cardVals[4] // highest card
            ;
        
        // Three of a kind
        if (isThreeOfAKind(cardVals))
            return 500000
                + 1000 * (cardVals[2] + 1) // get one middle card (it will always be the one we have 3 of)
                + 5 * cardVals[4] // kickers (their score will always be lower than main card, but will still help decide)
                + 4 * cardVals[3]
                + 3 * cardVals[2]
                + 2 * cardVals[1]
                + 1 * cardVals[0]
            ;

        // Two pair
        if (isTwoPairs(cardVals))
            return 400000
                + 1000 * (cardVals[3] + 1) // highest pair
                + 50 * (cardVals[1] + 1) // lowest pair
                + (cardVals[0] + cardVals[2] + cardVals[4] - cardVals[1] - cardVals[3]) // voodoo magic! (calculating the kicker)
            ;
        // Pairs
        if (isPair(cardVals))
            return 300000
                + getPairCoef(cardVals)
            ;

        // High cards by rank
        return 5 * cardVals[4] + 4 * cardVals[3] + 3 * cardVals[2] + 2 * cardVals[1] + cardVals[0];
    }
    public int getPairCoef(int[] cardVals)
    {
        int c0 = cardVals[0];
        int c1 = cardVals[1];
        int c2 = cardVals[2];
        int c3 = cardVals[3];
        int c4 = cardVals[4];
        
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
    /* public bool isRoyalFlush(int[] cards)
    {
        if (cards[0] != 10)
            return false;
        
        return isStraightFlush(cards);
    } */


//  ######   #######  ##     ## ########   ######  
// ##    ## ##     ## ###   ### ##     ## ##    ## 
// ##       ##     ## #### #### ##     ## ##       
// ##       ##     ## ## ### ## ########   ######  
// ##       ##     ## ##     ## ##     ##       ## 
// ##    ## ##     ## ##     ## ##     ## ##    ## 
//  ######   #######  ##     ## ########   ######  


    public bool isStraightFlush(int[] cards, int[] cardVals)
    {
        return isFlush(cards) && isStraight(cardVals);
    }
    public bool isFourOfAKind(int[] cardVals)
    {
        // optimized version (cards are sorted by value already)
        int c0 = cardVals[0];
        int c1 = cardVals[1];
        int c2 = cardVals[2];
        int c3 = cardVals[3];
        int c4 = cardVals[4];

        if ((c0 == c1)
            && (c0 == c2)
            && (c0 == c3))
            return true;
        
        if ((c4 == c1)
            && (c4 == c2)
            && (c4 == c3))
            return true;
        
        return false;

        /* byte[] combs = { 0,0,0, 0,0,0, 0,0,0, 0,0,0 };
        for (int i = 0; i < 5; i++)
        {
            combs[get_value(cards[i])]++;
        }
        for (int i = 0; i < combs.Length; i++)
        {
            if (combs[i] == 4)
                return true;
        }
        return false; */
    }
    public bool isFullHouse(int[] cardVals)
    {
        // 5,5,9,9,9
        int c0 = cardVals[0];
        int c1 = cardVals[1];
        int c2 = cardVals[2];
        int c3 = cardVals[3];
        int c4 = cardVals[4];

        if ((c0 == c1) // 2 of a kind
            && (c2 == c3) && (c2 == c4)) // 3 of a kind
            return true;
        
        // 6,6,6,K,K
        if ((c0 == c1) && (c0 == c2) // 3 of a kind
            && (c3 == c4)) // 2 of a kind
            return true;
        
        return false;
    }
    public bool isFlush(int[] cards)
    {
        int suit = get_suit(cards[0]);
        return (suit == get_suit(cards[1]))
            && (suit == get_suit(cards[2]))
            && (suit == get_suit(cards[3]))
            && (suit == get_suit(cards[4]))
        ;
    }
    public bool isStraight(int[] cardVals)
    {
        // 5,6,7,8,9
        // 2,3,4,5,A
        // 10,J,Q,K,A
        // straights can't wrap around (2,3,4,K,A is not a straight)
        if (isStraightSimple(cardVals))
            return true;
        
        int c0 = cardVals[0];
        int c1 = cardVals[1];
        int c2 = cardVals[2];
        int c3 = cardVals[3];
        int c4 = cardVals[4];

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
    public bool isStraightSimple(int[] cardVals)
    {
        int val = cardVals[0];
        for (int i = 1; i < 5; i++)
        {
            if (cardVals[i] != (val + i))
                return false;
        }
        return true;
    }
    
    // Three of a kind
    public bool isThreeOfAKind(int[] cardVals)
    {
        int c0 = cardVals[0];
        int c1 = cardVals[1];
        int c2 = cardVals[2];
        int c3 = cardVals[3];
        int c4 = cardVals[4];

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
    public bool isTwoPairs(int[] cardVals)
    {
        int c0 = cardVals[0];
        int c1 = cardVals[1];
        int c2 = cardVals[2];
        int c3 = cardVals[3];
        int c4 = cardVals[4];

        if (c0 == c1) // 2,2,3,3,4 or 2,2,3,4,4
            return ((c2 == c3) || (c3 == c4));
        
        if (c1 == c2) // 2,3,3,4,4
            return (c3 == c4);
        
        return false;
    }
    // Pairs
    public bool isPair(int[] cardVals)
    {
        int c0 = cardVals[0];
        int c1 = cardVals[1];
        int c2 = cardVals[2];
        int c3 = cardVals[3];
        int c4 = cardVals[4];

        return (c0 == c1) || (c1 == c2) || (c2 == c3) || (c3 == c4);
    }


                        
// ####### ####### ####### ####### ####### #######





    /* public bool IsValid(HandType handType)
    {
        switch (handType)
        {
            case HandType.RoyalFlush:
                return IsValid(HandType.StraightFlush) && Cards[4].Rank == RankType.Ace;
            case HandType.StraightFlush:
                return IsValid(HandType.Flush) && IsValid(HandType.Straight);
            case HandType.FourOfAKind:
                return GetGroupByRankCount(4) == 1;
            case HandType.FullHouse:
                return IsValid(HandType.ThreeOfAKind) && IsValid(HandType.OnePair);
            case HandType.Flush:
                return GetGroupBySuitCount(5) == 1;
            case HandType.Straight:
                return (int)Cards[4].Rank - (int)Cards[0].Rank == 4
                    || Cards[0].Rank == RankType.Ace;
            case HandType.ThreeOfAKind:
                return GetGroupByRankCount(3) == 1;
            case HandType.TwoPairs:
                return GetGroupByRankCount(2) == 2;
            case HandType.OnePair:
                return GetGroupByRankCount(2) == 1;
            case HandType.HighCard:
                return GetGroupByRankCount(1) == 5;
        }
        return false;
    } */
}

class MainClass
{
    public static void Main() {}
}